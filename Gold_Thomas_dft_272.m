% n = N_2 * n_1 + N_1 * n_2 (mod N)
% k = N_2 * mod(<N_2^(-1)>, N_1) * k_1 + N_1 * mod(<N_1^(-1)>, N_2) * k_2 (mod N)
% k_1 in [0, N_1-1], k_2 in [0, N_2-1]

function result = Gold_Thomas_dft_272(x)

if length(x) ~= 272
    error('the length of the input shall be 272.');
end

x = x(:);

load n_list_17_16;

x_permutated = x(n_list_17_16+1);

x_prime = reshape(x_permutated, 17, 16);

y = zeros(17, 16);
for index = 1:16
    y(:, index) = dft_17(x_prime(:, index));
end

y_reshaped = y.';

z = zeros(16, 17);
for index = 1:17
    z(:, index) = fft(y_reshaped(:, index));     % fft 16
end

z_in_a_column = z(:);

load k_list_17_16_inv;

result = z_in_a_column(k_list_17_16_inv);

end