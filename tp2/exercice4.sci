s=100;
rand("seed",s)
n = 10;

A = rand (n,n);
A = triu (A);
xex=rand(n,1);
b = A *xex;

x=usolve(A,b);
//erreur avant 
frelres= norm(xex-x)/norm(xex);
disp("erreur avant ",frelres)
//erreu arriere
brelres= norm(b-A*x)/norm(b);
disp("erreu arriere",brelres)
