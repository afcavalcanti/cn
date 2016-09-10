function [A,b]=gauss(A,b)
  [L,c]=size(a);
  for j=1:(L-1);
    pivo=A(j,j);
    for i=j+1:L
      fator=A(i,j)/pivo;
      A(i,:)=A(i,:)-fator*A(j,:);
      b(i)=b(i)-fator*b(j);
      end
  end
endfunction
