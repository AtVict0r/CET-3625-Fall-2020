%***************************************
% Find length using cosine law
% Find b2
%***************************************
% Input variables
b1 = input("b1 = "); % b1 = 140
c1 = input("c1 = "); % c1 = 100
c2 = input("c2 = "); % c2 = 120  
A1 = input("A1 = "); % A1 = 110
A2 = input("A2 = "); % A2 = 130
%***************************************
% Find a
% Cosine rule: a^2 = b^2 + c^2 - 2 * b * c * cos(A)
a1 = sqrt( (b1^2) + (c1^2) - 2 * b1 * c1 * cosd(A1)); % 197.93
a = a1^2; % a = 39176.56401
% Find b2
b2 = roots([1, -2 * c2 * cosd(A2), c2^2 - a]); % b2 = -252.424, b2 = 98.155
b2 = b2(b2 > 0); % c2 = 98.155
%***************************************
% Display result
disp(['b2 = ', num2str(b2)]);
%***************************************