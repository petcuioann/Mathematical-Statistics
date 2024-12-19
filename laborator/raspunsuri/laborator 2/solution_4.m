% Numărul de valori lambda de introdus
lambda_count = 2;
lambda_values = [5, 10]; % Valorile implicite ale lui lambda

% Obținerea valorilor lambda de la utilizator, cu posibilitate de folosire a valorilor implicite
for i = 1:lambda_count
    input_lambda = input(sprintf('Introduceți parametrul lambda al %d-lea (lambda = %d din enunț): ', i, lambda_values(i)));
    if ~isempty(input_lambda)
        lambda_values(i) = input_lambda;
    end
end

% Inițializare figură pentru afișarea graficelor
figure;

% Reprezentarea grafică a PDF și CDF pentru fiecare valoare lambda
for i = 1:lambda_count
    lambda = lambda_values(i);
    
    % Vectorul de abscise x
    x = 0:4 * lambda;
    
    % Graficul PDF Poisson
    pdf_values = poisspdf(x, lambda);
    subplot(2, lambda_count, i);
    stem(x, pdf_values, 'b', 'filled');
    title(['PDF Poisson \lambda = ', num2str(lambda)]);
    xlabel('x');
    ylabel('P(X = x)');
    grid on;
    
    % Graficul CDF Poisson
    cdf_values = poisscdf(x, lambda);
    subplot(2, lambda_count, i + lambda_count);
    stairs(x, cdf_values, 'g');
    title(['CDF Poisson \lambda = ', num2str(lambda)]);
    xlabel('x');
    ylabel('F(X \leq x)');
    grid on;
end
