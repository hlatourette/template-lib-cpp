add_library(templatelib STATIC)

target_link_libraries(templatelib
    PUBLIC
    INTERFACE
    PRIVATE
)

target_sources(templatelib
    PRIVATE
        templatelib_42.cpp
)

target_include_directories(templatelib
    PUBLIC
        $<BUILD_INTERFACE:${INC_DIR}>
    INTERFACE
    PRIVATE
        .
)
