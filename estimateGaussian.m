function [mu sigma2] = estimateGaussian(X)
[m, n] = size(X);
mu = zeros(n, 1);
sigma2 = zeros(n, 1);
mu=(1/m)*sum(X,1)'; 

for i=1:m     
a=(X(i,:)'-mu).^2;  
sigma2=sigma2+a;
end
sigma2=sigma2/m;
end