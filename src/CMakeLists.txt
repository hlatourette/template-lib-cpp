add_library(templatelib STATIC)

target_link_libraries(templatelib
    PUBLIC
    INTERFACE
    PRIVATE
)

target_sources(templatelib
    PRIVATE
        templatelib_42.cpp
    INTERFACE
    PUBLIC
        FILE_SET HEADERS
            BASE_DIRS
                ${INC_DIR}
            FILES
                ${INC_DIR}/templatelib_42.h
)

target_include_directories(templatelib
    PUBLIC
    INTERFACE
    PRIVATE
        .
)
