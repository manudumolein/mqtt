cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(Opdracht3_MQTT)



add_executable(Opdracht3_MQTT mqtt_publish.c)
add_executable(Opdracht3_CGI cgi-website.c)


include_directories(/usr/include/mariadb /usr/include/mariadb/mysql)

target_link_libraries(Opdracht3_MQTT mariadb  -lpaho-mqtt3c)
target_link_libraries(Opdracht3_CGI mariadb)
