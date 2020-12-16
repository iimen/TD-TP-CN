n=10;
A= rand(n,n)
B=rand(n,n)

tic;
C3b =matmat3b(A,B);
toc;

//*****************

tic;
C2b =matmat2b(A,B);
toc;

//*****************

tic;
C1b =matmat1b(A,B);
toc;
//****************
//plot2d(t,s,style=[-1]);
