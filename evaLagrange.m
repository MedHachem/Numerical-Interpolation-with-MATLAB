function[p]=evaLagrange(x,y,a)
n=length(x);
p=0;
for i = 0:n
    [L]=evalPolyL(i,x,a);
    p = p + y(i)*L;
end
endfunction
