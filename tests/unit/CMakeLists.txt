add_executable(unittest.tsk
    test.m.cpp
    templatelib_42.t.cpp
    )

target_link_libraries(unittest.tsk PRIVATE
    catch2
    templatelib
    )

add_test(NAME unittest COMMAND unittest.tsk)