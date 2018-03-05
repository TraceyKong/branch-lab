#include <iostream>
#include "doctest.h"

#include "rect.h"


using std::string;

string triangle(int l){
  std::string shape = "";
  for(int i=0; i<l; i++){
    shape+=line(i+1,"*")+line(l-i-1," ")+"\n";
  }
  return shape;
}

TEST_CASE("Testing Triangle"){
  string s = triangle(4);
  CHECK(s=="*\n**\n***\n****\n");
}
