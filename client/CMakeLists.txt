cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(Opdracht3_client)

add_executable(Opdracht3_client mqtt_publish.c TC74.c)
target_link_libraries(Opdracht3_client paho-mqtt3c)