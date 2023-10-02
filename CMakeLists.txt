cmake_minimum_required(VERSION 3.25.1)

project(templatelib VERSION 0.0.1 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(INC_DIR ${PROJECT_SOURCE_DIR}/include)
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)
set(TST_DIR ${PROJECT_SOURCE_DIR}/tests)

enable_testing()

add_subdirectory(${SRC_DIR})
add_subdirectory(${TST_DIR})

install(
    TARGETS
        templatelib
    COMPONENT templatelib
)

install(
    FILES
        ${INC_DIR}/templatelib_42.h
    TYPE INCLUDE
    COMPONENT templatelib
)

install(
    FILES
    TYPE DATA
    COMPONENT templatelib
)

set(CPACK_SYSTEM_NAME "Linux")
set(CPACK_PACKAGE_NAME "templatelib")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Hunter LaTourette")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Template library")
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_FILE_NAME ${CPACK_PACKAGE_NAME}-${CPACK_SYSTEM_NAME})
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
include(CPack)
