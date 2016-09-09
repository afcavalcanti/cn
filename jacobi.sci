function [xn,cont]=jacobi(A, b, x0, e, N)
    [l,c]=size(A);
    cont=0;
    xn=x0;
    xa=xn;
    erro=1;
    while erro>e & cont<N
        xa=xn;
        for i=1:l;
            soma=0;
            for j=1:l
                if j~=i
                    soma=soma+A(i,j)*xa(j);
                end
            end
         x(i)=(b(i)-soma)/A(i,i);
     end
     cont=cont+1;
     erro=(max(abs(xn-xa));
    end
endfunction
