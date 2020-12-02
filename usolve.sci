function [x] = usolve(A,b)
// Solve Ax = b by upper solution method
// We assume A upper triangular : only the upper triangular
// part of A is considered
// 
n = size(A,1);
x = zeros(size(b,1),1);
x(n)=b(n)/A(n,n);
for i=n-1 : -1 : 1
  x(i,1) = (b(i,1)-A(i,i+1:n)*x((i+1):n,1))/A(i,i);
end
endfunction
