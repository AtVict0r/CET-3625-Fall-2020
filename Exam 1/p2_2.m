x = 0 : 0.1 : 3; % Matrix
u = 2 * log(60 * x + 10);
plot(x, u);
xlabel('Distance in Miles');
ylabel('Speed in Miles per hour');
title('Plot of U(x)');