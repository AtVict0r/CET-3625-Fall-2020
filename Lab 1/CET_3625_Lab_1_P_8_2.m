disp('The three roots are:')
r = roots([1 0 0 -8])
plot(real(r(1)), imag(r(1)), '*r', real(r(2)), imag(r(2)), '*r', real(r(3)), imag(r(3)), '*r')