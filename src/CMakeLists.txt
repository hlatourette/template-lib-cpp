add_library(templatelib 
    templatelib_42.cpp
    )

target_link_libraries(templatelib PUBLIC
    ${EXTRA_LIBS}
    )

target_include_directories(templatelib PUBLIC
    ${PROJECT_SOURCE_DIR}/src
    ${EXTRA_INCLUDES}
    )

install(TARGETS
            templatelib
        DESTINATION /usr/local/lib
        COMPONENT templatelib
        )

install(FILES
            templatelib_42.h
        DESTINATION /usr/local/include
        COMPONENT templatelib
        )

install (FILES
        DESTINATION /usr/local/share
        COMPONENT templatelib
        )