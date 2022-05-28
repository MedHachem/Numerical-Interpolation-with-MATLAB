n=5;
x=zeros(1,n+1);
XX=-5:0.1:5;
Fn=zeros(1,n+1);
for i=0:n
  x(i+1)=-5+i*10/n;
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
title(['Points équipartis- Phénomène de Runge pour n=5']);
axis([-5 5 0 1]);
plot(XX,y,'g.-',"Linewidth",3);
legend('Pn(x)','F(x)=1*1+x^2');
xlabel('Axe des abscisses X');
ylabel('Axe des ordonnées Y');
grid on;
hold off;