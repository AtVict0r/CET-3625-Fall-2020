p = [1 0 0 -8];
r = roots(p);
fprintf("Roots are:\n")
disp(r)
scatter(real(rt), imag(rt), 'filled', 'red')