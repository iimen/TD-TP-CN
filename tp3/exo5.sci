function [L,U] =factorisation(A)
    [m,n]=size(A);
    
    for i= 1:n
        L(i,1) = A(i,1);
    end
    
    for j=1:m
        U(1,j)=A(1,j)/L(1,1);
    end
    
    for j=2:n
        for i=j:n
            res=0.0;
            
            for k= 1:(j-1)
                RES=RES+L(i,k)*U(k,j);
                
            end
            L(i,j)=A(i,j)-RES 
        end
     U(j,j)=1;
     for i=(j+1):n
         RES=0.0;
       for k=1:(j-1)
           RES=RES+L(j,k)+U(k,i);
       end
       U(j,i)=(A(j,i)-RES)/L(j,j);                
    end
    end
endfunction
