cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(Opdracht3_website)

include_directories(/usr/include/mariadb /usr/include/mariadb/mysql)
add_executable(Opdracht3_website cgi-website.c)
target_link_libraries(Opdracht3_website mariadb)
