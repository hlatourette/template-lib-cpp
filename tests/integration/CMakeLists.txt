add_executable(integrationtest.tsk
    test.m.cpp
    templatelib_42.t.cpp
    )

target_link_libraries(integrationtest.tsk PUBLIC 
    catch2
    templatelib
    )

add_test(NAME integrationtest COMMAND integrationtest.tsk)