function [J, grad] = costFunction(theta, X, y)
m = length(y); % number of training examples
n = size(X,2);
h = sigmoid(X*theta);

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

    t1 = y'*log(h);
    t2 = (1-y)'*log((1-h));
    J = (-t1-t2)/m;

    mat = h-y;
    summ = zeros(n,1);
    for i=1:n,
    	k = mat.*X(:,i);
    	summ(i) = sum(k);
    	end;

    grad = summ.*(1/m);








% =============================================================

end
