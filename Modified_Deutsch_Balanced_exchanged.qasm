OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];

h q[0];
x q[1];
s q[0];
h q[1];
h q[0];
barrier q[0],q[1];
z q[0];
cx q[0],q[1];
z q[0];
barrier q[0],q[1];
h q[0];
h q[1];
sdg q[0];
x q[1];