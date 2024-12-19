% Numărul de valori p de introdus
p_count = 2;
p_values = [0.3, 0.4]; % Valorile implicite pentru p

% Obținerea valorilor p de la utilizator, cu posibilitate de folosire a valorilor implicite
for i = 1:p_count
    input_p = input(sprintf('Introduceți parametrul p al %d-lea (p = %.2f din enunț): ', i, p_values(i)));
    if ~isempty(input_p)
        p_values(i) = input_p;
    end
end

% Inițializare figură pentru afișarea graficelor
figure;

% Reprezentarea grafică a PDF și CDF pentru fiecare valoare de p
for i = 1:p_count
    p = p_values(i);
    
    % Vectorul de abscise x
    x = 0:15; % valori de x între 0 și 15 pentru a vizualiza distribuția geometrică
    
    % Graficul PDF Geometric
    pdf_values = (1 - p).^x * p;
    subplot(2, p_count, i);
    stem(x, pdf_values, 'b', 'filled');
    title(['PDF Geometric p = ', num2str(p)]);
    xlabel('x');
    ylabel('P(X = x)');
    grid on;
    
    % Graficul CDF Geometric
    cdf_values = 1 - (1 - p).^(x + 1);
    subplot(2, p_count, i + p_count);
    stairs(x, cdf_values, 'g');
    title(['CDF Geometric p = ', num2str(p)]);
    xlabel('x');
    ylabel('F(X <= x)');
    grid on;
end
