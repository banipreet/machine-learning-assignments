function [J, grad] = costFunctionReg(theta, X, y, lambda)
m = length(y); % number of training examples
n = size(X,2);
h = sigmoid(X*theta);
J = 0;
grad = zeros(size(theta));



    t1 = y'*log(h);
    t2 = (1-y)'*log((1-h));
    J = (-t1-t2)/m;
    k = theta.^2;
    v = (sum(k)-k(1)) * (lambda/(2*m));
    J = J + v;

    mat = h-y;
    summ = zeros(n,1);
    for i=1:n,
    	k = mat.*X(:,i);
    	if i==1,
    		summ(i) = sum(k);
    	else,
    		summ(i) = sum(k) + lambda*theta(i);
    	end;
    	end;

    grad = summ.*(1/m);

end
