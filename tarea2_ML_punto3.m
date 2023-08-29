pos = [1,2,4,8,10,50];

for i=1:length(pos)
p=pos(i);

f=@(x,y) (abs(x.^p) + abs(y.^p)).^(1/p);
[X,Y]=meshgrid(-2:0.1:2);
z=f(X,Y);
figure(i)
contour(real(X),real(Y),real(z),6)
hold on
end

