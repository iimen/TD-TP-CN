function [X] =lsolve(L,b) 
// L matrice diagonale inf 

   n=size(L,1)
   x=zeros (n);
   
   x(1)=b(1)/L(1,1)
   
   for i= 2 : n 
       x(i) =(b(i)-L(i,(i-1)*x(1:(i-1))))/L(i,i)
   end
   
endfunction
