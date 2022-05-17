add_library(templatelib STATIC
    templatelib_42.cpp
)

target_link_libraries(templatelib
    PUBLIC
    INTERFACE
    PRIVATE
)

target_include_directories(templatelib
    PUBLIC
        ${INC_DIR}
    INTERFACE
    PRIVATE
        .
)
