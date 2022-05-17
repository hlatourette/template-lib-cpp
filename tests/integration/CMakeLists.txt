add_executable(integrationtest.tsk
    test.m.cpp
    templatelib_42.t.cpp
)

target_link_libraries(integrationtest.tsk
    PRIVATE
        catch2
        templatelib
)
