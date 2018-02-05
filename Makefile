CXX = g++
CFLAGS = -fPIC -std=c++11 -pedantic
INCLUDE = -I/usr/lib -I/usr/include/python3.6m
LIB = -lboost_python3
TARGET = EXE

obj/%.o: src/%.cxx
ifeq ($(TARGET),SO)
	$(CXX) $(CFLAGS) $(INCLUDE) -c -o $@ $<
else
	@echo Not implemented! # would compile standalone executable (c++ version) here
endif

SIM = obj/sim.o obj/sim_py.o obj/sim_integrator_euler.o

clean:
	rm -rf obj/*.o sim.so

sim.so: $(SIM)
	$(CXX) -o $@ -shared $(CFLAGS) $(INCLUDE) $(SIM) $(LIB)


