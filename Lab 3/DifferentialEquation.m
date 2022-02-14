syms y(t) Dy(t) z(t)

Dy(t) = diff(y);

disp('Question 1');
equation = diff(y, 2) + 4 * diff(y) + 4 * y == exp(-2 * t);
condition = [y(0) == 0, Dy(0) == 4];
solution = simplify(dsolve(equation, condition));
disp(['Displaying the solution y(t) = ', char(solution)])

disp('Question 2');
equation = diff(y,2) + diff(y) == sin(t);
condition = [y(0) == 1, Dy(0) == 4];
solution = simplify(dsolve(equation,condition));
disp(['Displaying the solution y(t) = ', char(solution)])

disp('Question 3');
equation = diff(y,2) - 6 * diff(y) + 9 * y == t * exp(3 * t);
condition = [y(0) == 1, Dy(0) == 4];
solution = simplify(dsolve(equation,condition));
disp(['Displaying the solution y(t) = ', char(solution)])

disp('Question 4');
equation = diff(y,2) + 2 * diff(y) + 10 * y == -6 * exp(-t) * sin(3 * t);
condition = [y(0) == 0, Dy(0) == 1];
solution = simplify(dsolve(equation,condition));
disp(['Displaying the solution y(t) = ', char(solution)])

disp('Question 4');
equation1 = diff(y) + diff(z) - 3 * z == 0;
equation2 = diff(y,2) + diff(z) == 0;
condition = [y(0) == 0, Dy(0) == 0, z(0) == (4/3)];
solution = (dsolve([equation1, equation2], condition));
disp(['Displaying the solution y(t) = ', char(solution.y)])
disp(['Displaying the solution z(t) = ', char(solution.z)])