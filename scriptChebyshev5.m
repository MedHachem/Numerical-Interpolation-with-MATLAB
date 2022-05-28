n=5;
b=5;
a=-5;
x=zeros(1,n+1);
XX=a:0.1:b;
Fn=zeros(1,n+1);
for i=0:n
  x(i+1)=(a+b)/2+(b-a)/2*cos((2*i+1)*pi/(2*(n+1)));
  Fn(i+1)=1/(1+x(i+1)^2);
end
d=diffDiv(x,Fn);
p=zeros(1,length(XX));
for i=1:length(XX)
  p(i)=evalNewton(x,d,XX(i));
end
y=zeros(1,length(XX));
for i=1:length(XX)
  y(i)=1/(1+XX(i)^2);
end
plot(XX,p,'b.-',"Linewidth",2);
hold on
title(['Points équipartis- Points d''interpolation de Chebyshev pour n=5']);
axis([-5 5 0 1]);
plot(XX,y,'g.-',"Linewidth",3);
legend('Pn(x)','F(x)=1*1+x^2');
xlabel('Axe des abscisses X');
ylabel('Axe des ordonnées Y');
grid on;
hold off;
