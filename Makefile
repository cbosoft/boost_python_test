CXX = g++
CFLAGS = -fPIC -std=c++11 -pedantic
INCLUDE = -I/usr/lib -I/usr/include/python3.6m
LIB = -lboost_python3

%.o: %.cxx
	$(CXX) $(CFLAGS) $(INCLUDE) -c -o $@ $<

SIM = sim.o sim_py.o sim_integrator_euler.cxx

sim.so: $(SIM)
	$(CXX) -o $@ -shared $(CFLAGS) $(INCLUDE) $(SIM) $(LIB)
