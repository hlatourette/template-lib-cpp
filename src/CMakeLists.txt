set(LIBRARY_NAME templatelib)

add_library(${LIBRARY_NAME} STATIC)

target_link_libraries(${LIBRARY_NAME}
    PUBLIC
    INTERFACE
    PRIVATE
)

target_sources(${LIBRARY_NAME}
    PRIVATE
        fortytwo.cpp
    INTERFACE
    PUBLIC
        FILE_SET HEADERS
            BASE_DIRS
                ${INC_DIR}
            FILES
                ${INC_DIR}/${LIBRARY_NAME}/fortytwo.h
)

target_include_directories(${LIBRARY_NAME}
    PUBLIC
    INTERFACE
    PRIVATE
        .
)

