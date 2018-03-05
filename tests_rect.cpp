#include <iostream>
#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "rect.h"

TEST_CASE("Testing Box"){
  string s = box(4,3);
  CHECK(s=="****\n****\n****\n");
}