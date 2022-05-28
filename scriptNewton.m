x=[0,0.5,1,1.5,2]
y=[sin(0),sin(0.5),sin(1),sin(1.5),sin(2)]
XX=0:0.1:2;
d=diffDiv(x,y);
p=zeros(1,length(XX));
for i=1:length(XX)
    p(i)=evaLNewton(x,d,XX(i));
end
yy=zeros(1,length(XX));
for i=1:length(XX)
  yy(i)=sin(XX(i));
end
plot(XX,p,'b.-',"Linewidth",2)
hold on
title(['Interpolation dans la base de Newton de la fonction f(x)=sin(x)']);
axis([0 2 0 1])
plot(XX,yy,'r.--',"Linewidth",3,x,y,'g *',"Linewidth",3)

legend('Pn(x)','F(x)=sin(x)','Sin(i);i=0,1/2,1,3/2,2');
xlabel('axe des abscisses X')
ylabel('axe des cordonnées Y')
grid on
hold off

