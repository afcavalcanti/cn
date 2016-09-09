function x=retroativo(A,b)
    [l,c]=size(A);
    for i=l:-1:1
        soma=0;
        for j=i+1:c
            soma=soma+A(i,j)*x(j);
        end
        x(i)=((b(i)-soma)/A(i,i));
    end
endfunction
function [x,Aa]=gauss(A,b)
    [l,c]=size(A);
    Aa=[A,b];
    for i=1:l-1
        pivo=Aa(i,i);
        for j=i+1:c
            m=Aa(j,i)/pivo;
            Aa(j,:)=Aa(j,:)-m*Aa(i,:);
        end
    end
    x=retroativo(Aa(1:l,1:c),Aa(:,c+1));
endfunction
