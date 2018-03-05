#include <iostream>
#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "rect.h"

TEST_CASE("Testing Triangle"){
  string s = triangle(4);
  CHECK(s=="*   \n**  \n*** \n****\n");
}