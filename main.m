x=[0,0.5,1,1.5,2];
y=[0,1,0,1,0];
t = 0:0.01:2;
     x1 = sin(t);
   [y1] =evaLagrange(x,y,1)
    plot(t,x1,'k'); hold on;
     plot(t,y1,'r-.');
     axis([0 2 0 1]);
     legend('sin(t)','sin(t)','Location','NorthEast');
 % x=[0,0.5,1,1.5,2];
  %y=[sin(0),sin(0.5),sin(1),sin(1.5),sin(2)];
  %[d]=DiffDiv(x,y);

