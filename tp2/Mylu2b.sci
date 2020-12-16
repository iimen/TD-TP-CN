function [L,U]= mylu2b (A)
    n= size (A,1)
    for k= 1 : n-1 
        for i= k+1:n
            A(i,k)= A(i,k)/A(k,k);
        end
        for i=k+i:, 
            for k= k+1:n
                A(i,j) = A(i,j)-A(k,j);
            end
        end
    end
endfunction
