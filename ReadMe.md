L.M. Arthur, Cambridge, MA, 2024

This lightweight, header-only library contains an implementation of the Kalman Filtering algorithm, written in C and based on the GNU Scientific Library (GSL). The library is designed to be efficient, not in the sense that the code runs efficiently, but in the sense that the code is easy to understand, modify, and extend. All functions are written for C doubles.

Unit tests are written in the Tau framework, and GSL BLAS functions are written in easy-to-interpret wrappers. 

TODO:
- [X] Write linalg tests
- [X] Implement kalman struct
- [ ] Implement kalman prediction and update
- [ ] Add runtime checks
- [ ] Implement simple examples with plotting