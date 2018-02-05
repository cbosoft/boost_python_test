#include "sim.h"

void Sim::foo(){
}
void Sim::bar(){
}

void Sim::integrate(){
  foo();
  bar();
  for (int i = 0; i < 100000; i++){
    double a = (10.0 * 10.0 / 2.3333333333) * 4.85764 * i / (double(i) + 0.1);
    std::cout << a << std::endl;
  }
}
