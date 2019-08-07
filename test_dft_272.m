function test_dft_272

x = rand(272, 1) + rand(272, 1) * 1i;

y = Gold_Thomas_dft_272(x);
z = fft(x);

if norm(y - z) < 1.0e-12
    disp('test passed.');
else
    disp('test failed.');
end

end