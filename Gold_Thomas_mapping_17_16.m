function Gold_Thomas_mapping_17_16

N_1 = 17;
N_2 = 16;

n_list_17_16 = [];

for n_2 = 0:(N_2-1)
    for n_1 = 0:(N_1-1)
        n = mod(16 * n_1 + 17 * n_2, 272);
%         fprintf('%d\n', n);
        n_list_17_16 = [n_list_17_16; n]; %#ok<AGROW>
    end
end

save n_list_17_16 n_list_17_16;

k_list_17_16 = [];

for k_1 = 0:(N_1-1)
    for k_2 = 0:(N_2-1) 
        k = mod(256 * k_1 + 17 * k_2, 272); % 3^(-1) = 11 (mod 32),  32^(-1) = 2 (mod 3)
%         fprintf('%d\n', n);
        k_list_17_16 = [k_list_17_16; k]; %#ok<AGROW>  
    end
end

save k_list_17_16 k_list_17_16;

[~, k_list_17_16_inv] = sort(k_list_17_16);

save k_list_17_16_inv k_list_17_16_inv;

end