% Manual method
K_array = (0:0.1:220).';
NK = length(K_array);
x_array = zeros(NK, 3);
y_array = zeros(NK, 3);

for nK = 1:NK
   K = K_array(nK);
   C = [1, 3, (5 + K), (1 + 3*K)];
   r = roots(C).';
   x_array(nK,:) = real(r);
   y_array(nK,:) = imag(r);
end

figure();
plot(x_array, y_array);
grid on;

% Built-in method
sys = tf([1, 3], [1, 3, 5, 1]);
figure();
rlocus(sys);
