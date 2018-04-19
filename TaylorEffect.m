absreturn=abs(returns)
T=zeros(1000,20);
R=zeros(50,20);
for j =1:20
    for i = 1:1000
        T(i,j)=absreturn(i)^(j/10);
    end
end
for p=1:20
     M=autocorr(T(1:1000,p),50);
     for q=1:50
         R(q,p)=M(q);
     end
end
R=R(2:end,:);
R=R';
surf(R);
set(gca,'ytick',0:5:20,'yticklabel',0:0.5:2);
xlabel('lag');
ylabel('¦È');
zlabel('autocorrelation');
title('Taylor effect');