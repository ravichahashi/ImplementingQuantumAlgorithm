OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

h q[0];
x q[2];
h q[2];
barrier q[0],q[1],q[2];
swap q[0],q[1];
cx q[0],q[2];
swap q[0],q[1];
barrier q[0],q[1],q[2];
h q[0];
h q[2];
x q[2];
measure q[0] -> c[0];