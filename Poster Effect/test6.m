clc
clear all
close all

R_mat = [218 255 255 88; 218 255 255 88; 218 255 255 88];

G_mat = [247 195 87 24; 247 195 87 24; 247 195 87 24];

B_mat = [166 0 51 69; 166 0 51 69; 166 0 51 69];

rgb_im(:,:,1) = R_mat;
rgb_im(:,:,2) = G_mat;
rgb_im(:,:,3) = B_mat;

rgb_im = uint8(rgb_im);
% imshow(rgb_im,'InitialMagnification','fit');

output_im = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        k = size(rgb_im, 2);
        for j = 1 : size(rgb_im, 2)
            output_im(i,k,c) = rgb_im(i,j,c);
            k = k-1;
        end
    end
end

imshow(output_im,'InitialMagnification','fit');