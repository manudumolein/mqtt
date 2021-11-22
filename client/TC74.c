#include <stdio.h> 	//*printf, pclose/popen
#include <string.h> //strcpy
#include <stdlib.h> //strtol
#include "TC74.h"

// Private functions
int exec(char *command, char *out, int out_len);

// Public function documented in header
int readTempInC(int bus, TC74_t addy)
{
	#define C_LEN	20	//length of command
	#define B_LEN	3	//length of bus
	#define A_LEN	10	//length of addy
	#define PADD	6	//leave some extra space

	#define T_LEN	6	//Max length of temperature string

	char i2c_command[A_LEN+B_LEN+C_LEN+PADD];
	strncpy(i2c_command, "/usr/sbin/i2cget -y", 20);
	
	if (bus == 1) {
		strncat(i2c_command, " 1", B_LEN);
	}
	else if (bus == 0) {
		strncat(i2c_command, " 0", B_LEN);
	}
	else {
		fprintf(stderr, "Valid values for bus are [0,1] %d is invalid.\n", bus);
		return -1;
	}

	char addystr[A_LEN];
	int ret = snprintf(addystr, A_LEN, " 0x%x", addy);
	if (ret < 0) {
		fprintf(stderr, "Unable to generate command string.\n");
		return -2;
	}
	else if (ret > A_LEN) {
		fprintf(stderr, "%d characters were truncated.\n", ret-A_LEN);
	}
	strncat(i2c_command, addystr, A_LEN);

	char temp[T_LEN];
	ret = exec(i2c_command, temp, T_LEN);
	if (ret < 0)
	{
		return -3;
	}
	//parse the temperature

	return strtol(temp, NULL, 16); 
}



int exec(char *command, char *out, int out_len)
{
	FILE *fp;

	//Open the command for reading.
	fp = popen(command, "r");
	if (fp == NULL) {
		fprintf(stderr, "Failed to run command %s\n", command);
		return -1;
	}

	// Read the output a line at a time - output it.
	// while (fgets(path, sizeof(path)-1, fp) != NULL) {
	// 	printf("%s", path);
	// }

	//read the first line and send it back to the caller
	char *ret = fgets(out, out_len-1, fp);
	if (ret == NULL)
	{
		fprintf(stderr, "Unable to read output from command %s\n", command);
		return -2;
	}

	//close
	pclose(fp);

	return 0;
}
