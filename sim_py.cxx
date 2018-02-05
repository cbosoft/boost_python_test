#include <boost/python.hpp>
#include "sim.h"

BOOST_PYTHON_MODULE(sim) {
  boost::python::class_<Sim>("Sim")
    .def("integrate", &Sim::integrate)
    ;
}
