clc
clear all
close all

im = imread("mirror_in.jpg");

output_im = im;
for c = 1 : size(im, 3)
    for i = 1 : size(im, 1)
        k = size(im, 2);
        for j = 1 : size(im, 2)
            output_im(i,k,c) = im(i,j,c);
            k = k-1;
        end
    end
end

% imshow(output_im)

output_im_2 = im;
for c = 1 : size(im, 3)
    k = size(im, 1);
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_2(k,j,c) = im(i,j,c);
        end
         k = k-1;
    end
end

% imshow(output_im_2)

subplot(2,2,1);
imshow(im);
title("Original Image");
subplot(2,2,2);
imshow(output_im);
title("Reversed row / Mirror");
subplot(2,2,3);
imshow(im);
title("Original Image");
subplot(2,2,4);
imshow(output_im_2);
title("Reversed column / Mirror");
set(gcf,'position',[10,10,1080,720])