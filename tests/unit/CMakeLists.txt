find_package(Catch2 REQUIRED)

add_executable(templatelib.u.t)

target_link_libraries(templatelib.u.t
    PRIVATE
        Catch2::Catch2WithMain
        templatelib
)

target_sources(templatelib.u.t
    PRIVATE
        templatelib_42.t.cpp
)
