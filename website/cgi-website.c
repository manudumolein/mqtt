/* Show the CGI (Common Gateway Interface) environment variables */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

#include <unistd.h>
#include <mysql.h>

#define MAXLEN 80
#define EXTRA 5
#define MAXINPUT MAXLEN + EXTRA + 2


/* Print a basic HTTP header. */
static void print_http_header(const char *content_type)
{
    printf("Content-Type: %s\n\n", content_type);
}

void finish_with_error(MYSQL *con)
{
    fprintf(stderr, "%s\n", mysql_error(con));
    mysql_close(con);
    exit(1);
}

void printTabel()
{
    char *lenstr;
    char input[MAXINPUT], data[MAXINPUT];
    long len;
    char sql_query[100];

    MYSQL *con = mysql_init(NULL);
    if (con == NULL)
    {
        fprintf(stderr, "%s\n", mysql_error(con));
        exit(1);
    }

    if (mysql_real_connect(con, "localhost", "webuser", "secretpassword", "MQTT_sensor", 0, NULL, 0) == NULL)
    {
        fprintf(stderr, "%s\n", mysql_error(con));
        mysql_close(con);
        exit(1);
    }

    sprintf(sql_query,
            "SELECT * FROM temperatuur ORDER by id desc LIMIT %d", 20);

    if (mysql_query(con, sql_query))
    {
        finish_with_error(con);
    }

    MYSQL_RES *result = mysql_store_result(con);

    if (result == NULL)
    {
        finish_with_error(con);
    }

    int num_fields = mysql_num_fields(result);

    MYSQL_ROW row;
    MYSQL_FIELD *field;

    while ((row = mysql_fetch_row(result)))
    {
        printf("<tr>\n");
        for (int i = 0; i < num_fields; i++)
        {
            printf("<td>%s</td>\n", row[i] ? row[i] : "NULL");
        }
        printf("</tr>\n");
    }
    mysql_free_result(result);
    mysql_close(con);
}

int main()
{
    print_http_header("text/html");
    printf("<HTML>\n");
    printf("<HEAD>\n");
    printf("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU\" crossorigin=\"anonymous\">");
    printf("<TITLE>Embedded Opdracht 3</TITLE>\n");
    printf("<h1>Opdracht 3 MQTT</h1>");
    printf("</HEAD>\n");
    printf("<BODY style=\"max-width: 60\%; margin-right: auto; margin-left: auto;\">\n");
    printf("<table class=\"table table-striped mt-5\">\n");
    printf("<tr>");
    printf("<th scope=\"col\">ID</th>");
    printf("<th scope=\"col\">Temperature</th>");
    printf("<th scope=\"col\">Timestamp</th>");
    printf("</tr>");

    printTabel();

    printf("</table>\n");
    printf("</BODY>\n");
    printf("</HTML>\n");

    return (EXIT_SUCCESS);
}
