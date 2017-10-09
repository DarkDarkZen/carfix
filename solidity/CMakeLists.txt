cmake_minimum_required(VERSION 3.7)
project(carfixico)

set(SOLC solc)

FILE(GLOB SOURCES "contracts/*.sol")
add_custom_target(source SOURCES ${SOURCES})

#add_custom_command(OUTPUT carfixico.bin COMMAND solc --bin carfixico.sol -o carfixico.bin)
#add_custom_target(CarFixICO DEPENDS carfixico.bin)
