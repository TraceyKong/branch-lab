#include <iostream>
#include "doctest.h"

#include "rect.h"


using std::string;

string line(int size, string c){
  string s = "";
  for(int i=0; i<size; i++){
    s+=c;
  }
  return s;
}

string triangle(int l){
  string shape = "";
  for(int i=0; i<l; i++){
    shape+=line(i+1,"*")+line(l-i-1," ")+"\n";
  }
  return shape;
}

