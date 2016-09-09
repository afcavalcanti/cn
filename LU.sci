function [L,U]=LU(A, b)
    [l,c]= size(A);
    U = A;
    L=eye(l,c);
    for i=1:l
        pivo = U(i,i);
        for j=i+1:c
            m = -U(j,i)/pivo;
            L(j,i)=-m;
           U(j,:)= U(j,:)+ m*U(i,:);
           end
    end
endfunction
