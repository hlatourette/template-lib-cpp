add_library(templatelib STATIC
    templatelib_42.cpp
    )

target_link_libraries(templatelib
    PUBLIC
    INTERFACE
    PRIVATE
    )

target_include_directories(templatelib
    PUBLIC ${PROJECT_SOURCE_DIR}/include
    INTERFACE
    PRIVATE ${PROJECT_SOURCE_DIR}/src
    )

install(TARGETS
            templatelib
        DESTINATION /usr/lib
        COMPONENT templatelib
        )

install(FILES
            ${PROJECT_SOURCE_DIR}/include/templatelib_42.h
        DESTINATION /usr/include
        COMPONENT templatelib
        )

install(FILES
        DESTINATION /usr/share
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