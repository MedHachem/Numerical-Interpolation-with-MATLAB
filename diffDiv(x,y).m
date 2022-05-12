function [d]=diffDiv(x,y)
n=5;
for i=1:n
d(i) = y(i);
end
for k=2:n
for  i = n:k
d(i)= (d(i) - d(i -1)) ./ (x(i) - x(i - k+1));
end
end
end

