n = input('Introduceți parametrul n (gradul de libertate, n = 100 din enunt): ');
m = 0;
sigma = sqrt(n / (n - 2));

x = m - 3 * sigma : 0.01 : m + 3 * sigma;

figure;

% Graficul PDF
pdf_values = tpdf(x, n);
subplot(2, 1, 1);
plot(x, pdf_values, 'b', 'LineWidth', 1.5);
title(['PDF pentru distribuția t-Student cu n = ', num2str(n)]);
xlabel('x');
ylabel('f(x)');
grid on;

% Graficul CDF
cdf_values = tcdf(x, n);
subplot(2, 1, 2);
plot(x, cdf_values, 'g', 'LineWidth', 1.5);
title(['CDF pentru distribuția t-Student cu n = ', num2str(n)]);
xlabel('x');
ylabel('F(x)');
grid on;