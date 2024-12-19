n = input('Introduceți parametrul n (n = 7 din enunt): ');
p = input('Introduceți parametrul p (p = 0.3 din enunt): ');
x = 0:n;

figure;

% Graficul PDF
pdf_values = binopdf(x, n, p);
subplot(2, 1, 1);
stem(x, pdf_values, 'b', 'filled');
title(['PDF Binomial n = ', num2str(n), ', p = ', num2str(p)]);
xlabel('x');
ylabel('P(X = x)');
grid on;

% Graficul CDF
cdf_values = binocdf(x, n, p);
subplot(2, 1, 2);
stairs(x, cdf_values, 'g');
title(['CDF Binomial n = ', num2str(n), ', p = ', num2str(p)]);
xlabel('x');
ylabel('F(X \leq x)');
grid on;