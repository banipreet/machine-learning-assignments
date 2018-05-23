function g = sigmoid(z)
g = zeros(size(z));


a = 1+exp(-1*z);;
g = 1./a;



% =============================================================

end
