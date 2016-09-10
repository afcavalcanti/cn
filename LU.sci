function [L,U]=LU(A)
    [l,c]= size(A);
    L=eye(l,c);
    for j=1:(l-1)
        pivo = A(j,j);
        for i=j+1:l
            fator = A(i,j)/pivo;
            A(i,:)=A(i,:)-fator*A(j,:);
            L(i,j)=fator;
           end
    end
    U=A;
endfunction
