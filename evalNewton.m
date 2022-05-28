function[p]=evalNewton(x,d,a)
p=d(length(x));
for i=length(x):-1:2
  p=p*(a-x(i-1))+d(i-1);
end

