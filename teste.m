clear;
pkg load symbolic;
syms x;
q=2;
u0=-2*x+2;
Au0=diff(u0,2);
phi=[x.^3-1; x.^2-1];
Aphi=diff(phi,x,2);
K=int(Aphi*phi.',0,1)
F=int((q-Au0)*phi,0,1)
K\F