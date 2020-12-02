//N=100
function jouet (N)
    A= rand(N,N);
    xex= rand(N,1);
    b=A*xex ;
    x=A\b ;
    frelres= norm(x-xex)/norm (xex);
    brelres= norm(b-A*x)/norm(b);
    disp ("frelres : ",frelres);
    disp ("brelres : ",brelres);
    c= cond(A);
    disp ("conditionnement : ",c);
    borne = cond(A) * brelres;
    disp ("borne : ",borne);
    disp ('fin du pg');
end
