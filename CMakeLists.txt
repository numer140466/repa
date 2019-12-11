cmake_minimum_required(VERSION 3.0)
project(MyProg VERSION 1.0.0 LANGUAGES CXX)
find_package(Qt5 COMPONENTS Widgets REQUIRED)
add_executable(MyProg1 main.cpp Fonar.cpp client_side.cpp server_side.cpp)
find_package(libQt REQUIRED)
include_directories( ${use/lib/x86_64-linux-gnu} )
target_link_libraries( MyProg1 ${use/lib/x86_64-linux-gnu} )
target_link_libraries(MyProg1 Qt5::Widgets)
#add_executable(MyProg main.cpp Fonar.cpp)
#add_library(MyLib STATIC const.h)
#target_link_libraries(MyProg MyLib) 

#project(MyProg VERSION 1.0.0 LANGUAGES CXX)
#add_executable(MyProg main.cpp Fonar.cpp)
#add_library(MyProg STATIC Fonar.cpp)
#target_link_libraries(MyProg Fonar.cpp) 



