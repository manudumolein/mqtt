cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(Opdracht3_server)

add_executable(Opdracht3_server mqtt_subscribe.c)
include_directories(/usr/include/mariadb /usr/include/mariadb/mysql)
target_link_libraries(Opdracht3_server mariadb  -lpaho-mqtt3c)
