#include <catch.hpp>
#include <templatelib_42.h>

namespace templatelib {

TEST_CASE( "The answer to life, the universe, and everything", "[templatelib_42]" ) {
    REQUIRE( meaningOfLifeTheUniverseAndEverything("What's the answer to the ultimate question?") == 42 );
}

} // close namespace templatelib