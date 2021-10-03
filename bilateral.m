clear all;
% Parameters % 
img = imread('Cameraman.png');
KERNEL_SIZE = 2;
sp_sig = 1;
in_sig = 1;

[height, width] = size(img);
k_end = 2 * KERNEL_SIZE + 1;
g_sp = zeros(k_end, k_end);
sp_var = sp_sig ^ 2;
for i = 1:k_end
    for j = 1:k_end
        g_sp(i, j) = exp(- ((i - KERNEL_SIZE - 1)^2 + (j - KERNEL_SIZE - 1)^2) / (2 * sp_var));
    end
end

in_var = in_sig ^ 2;
final_img = zeros(height, width);
g_inten = zeros(k_end, k_end);
for i = 1 + KERNEL_SIZE:height - KERNEL_SIZE
    for j = 1 + KERNEL_SIZE: width - KERNEL_SIZE
        for m = -KERNEL_SIZE:KERNEL_SIZE
            for n = -KERNEL_SIZE:KERNEL_SIZE
                g_inten(m + KERNEL_SIZE + 1, n + KERNEL_SIZE + 1) = exp(-(db_img(i, j) - db_img(i + m, j + n)).^2 ./ (2 * in_var));
            end
        end
        g_all = g_sp .* g_inten;
        all_norm = sum(g_all(:));
        g_all = g_all ./ all_norm;
        final_img(i, j) = sum(db_img(i - KERNEL_SIZE: i+KERNEL_SIZE, j - KERNEL_SIZE:j + KERNEL_SIZE) .* g_all, 'all');
    end
end
imshow(uint8(final_img));