project(iShapes LANGUAGES C CXX)
cmake_minimum_required(VERSION 3.5)

find_package(Idlpp-cxx REQUIRED PATHS "${CMAKE_CURRENT_SOURCE_DIR}/../../../..")

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt5 REQUIRED Core Widgets Gui)

if (NOT TARGET CycloneDDS-CXX::ddscxx)
  find_package(CycloneDDS-CXX REQUIRED PATHS "${CMAKE_CURRENT_SOURCE_DIR}/../../../..")
endif()

# Convenience function, provided by the Idlpp-cxx that generates a CMake
# target for the given IDL file. The function calls Idlcpp-cxx to generate
# source files and compiles them into a library.
idl_ddscxx_generate(ddscxxishape_lib "ishape.idl")

set(HEADERS *.h *.hpp)

file(GLOB all_SRCS
        "${PROJECT_SOURCE_DIR}/*.cpp"
        )


set(EXECUTABLE_OUTPUT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../../../../bin")
add_executable(cyclone_demo_ishape ${all_SRCS} ishape.qrc)

# Link both executables to idl data type library and ddscxx.
target_link_libraries(cyclone_demo_ishape ddscxxishape_lib CycloneDDS-CXX::ddscxx Qt5::Widgets Qt5::Core Qt5::Gui)

set_property(TARGET cyclone_demo_ishape PROPERTY CXX_STANDARD 11)
