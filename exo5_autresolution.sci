function [L,U] = factorisation(A)
    [m,n]=size(A)
    for i=1:n
	b(i)=A(i,i)
	if i>1
	   c(i)=A(i-1,i)
	end
	if i<m
       	   a(i)=A(i+1,i)
	end
     end
     b_(1)=b(1)
     c_(1)=c(1)/b(1)
     for k=2:n
	c_(k)=c(k)/b_(k)
	b_(k)=b(k)-(a(k) * c_(k-1))
     end
     for i=1:m
	for j=1:n
	    if i==j
    	       U(i,j)=1
	       L(i,j)=b_(i)
	       if i<n
      	          U(i,j+1)=c_(i)
               end
	       if i>1
	          L(i+1,j)=a(i)
	       end
	    else
	       U(i,j)=0
               L(i,j)=0
	    end	
endfunction	
