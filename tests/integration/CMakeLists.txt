find_package(Catch2 REQUIRED)

add_executable(templatelib.i.t)

target_link_libraries(templatelib.i.t
    PRIVATE
        Catch2::Catch2WithMain
        templatelib
)

target_sources(templatelib.i.t
    PRIVATE
        fortytwo.t.cpp
)

