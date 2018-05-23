function plotData(X, y)

data = load('ex2data1.txt');
y = data(:,3);
X = data(:,1:2);
xlabel('Exam 1 score');
ylabel('Exam 2 score');
pos = find(y==1);
neg = find(y==0);
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);






% =========================================================================



hold off;

end
