lambda_count = 2;
lambda_values = [5, 10];
for i = 1:lambda_count
    lambda_values(i) = input(sprintf('Introduceti parametrul lambda al %d-lea (lambda = %d din enunt): ', i, lambda_values(i)));
end

figure;
hold on;

for i = 1:lambda_count
    lambda = lambda_values(i);
    
    [m, sigma] = expstat(1 / lambda);
    x = max(0, m - 3 * sigma):0.01:(m + 3 * sigma);
    y = lambda * exp(-lambda * x);
    plot(x, y, 'LineWidth', 1.5, 'DisplayName', sprintf('\\lambda = %d', lambda));
end

xlabel('x');
ylabel('f(x)');
title('Funcția de densitate pentru distribuția exponențiala');
legend('show');
grid on;
hold off;
