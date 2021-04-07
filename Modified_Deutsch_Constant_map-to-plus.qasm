OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

h q[0];
h q[1];
x q[2];
s q[0];
h q[2];
h q[0];
barrier q[0],q[1],q[2];
swap q[0],q[1];
cx q[0],q[2];
swap q[0],q[1];
barrier q[2],q[1],q[0];
h q[0];
h q[1];
h q[2];
x q[2];
sdg q[0];