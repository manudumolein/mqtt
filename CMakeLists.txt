cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(Opdracht3_MQTT)

INCLUDE_DIRECTORIES(
    .
    ${CMAKE_SOURCE_DIR}/src
    ${CMAKE_BINARY_DIR}
    )

add_executable(Opdracht3_MQTT mqtt_publish.c)

include_directories(/usr/include/mariadb /usr/include/mariadb/mysql)

target_link_libraries(Opdracht3_MQTT mariadb  -lpaho-mqtt3c)
