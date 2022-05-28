function [d]=diffDiv(x,y)
n=5;
d=y;
w=y;
for k=2:n
  for j=k:n
    w(j)=(d(j)-d(j-1))/x(j)-x(j-(k-1)));
  endfor
  for j=k:n
    d(j)=w(j);
  endfor
end
end


