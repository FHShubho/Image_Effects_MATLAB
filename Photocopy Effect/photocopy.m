clc
clear all
close all

im = imread("photocopy_in.jpg");
gray_im = rgb2gray(im);

red_channel=im(:,:,1);
green_channel=im(:,:,2);
blue_channel=im(:,:,3);
[red, pixel]=imhist(red_channel);
[green, pixel]=imhist(green_channel);
[blue, pixel]=imhist(blue_channel);

figure(1);
subplot(2,3,1);
imshow(im);
title("Original Image");
subplot(2,3,[2,3]);
bar(pixel, red,'r');
hold on;
bar(pixel, green,'g');
bar(pixel, blue,'b');
hold off;
subplot(2,3,4);
imshow(gray_im);
title("Grayscale Image");
subplot(2,3,[5,6]);
imhist(gray_im)
set(gcf,'position',[10,10,1080,720])


% implementing the formula
threshold = 100;
output_im = gray_im;
for i = 1 : size(gray_im, 1)
        for j = 1 : size(gray_im, 2)
            if gray_im(i,j) > 100
                output_im(i, j) = 255;
            else
                output_im(i, j) = (gray_im(i,j)*(threshold-gray_im(i,j)))/(threshold*threshold);
            end
        end
end
unique(output_im)
imwrite(output_im, "output_image_int.jpg");


% implementing the formula with double
threshold = 100;
gray_im = double(gray_im);
output_im_2 = gray_im;
for i = 1 : size(gray_im, 1)
        for j = 1 : size(gray_im, 2)
            if gray_im(i,j) > threshold
                output_im_2(i, j) = 255;
            else
                output_im_2(i, j) = (gray_im(i,j)*(threshold-gray_im(i,j)))/(threshold*threshold);
            end
        end
end
unique(output_im_2)
imwrite(output_im_2, "output_image_double.jpg");

figure(2);
subplot(2,3,1);
imshow(output_im);
title("Output Image (INT)");
subplot(2,3,[2,3]);
imhist(output_im)

subplot(2,3,4);
imshow(output_im_2);
title("Output Image (DOUBLE)");
subplot(2,3,[5,6]);
imhist(output_im_2)
set(gcf,'position',[10,10,1080,720])

%for different threshold
threshold = 50;
gray_im = double(gray_im);
output_im_1 = gray_im;
for i = 1 : size(gray_im, 1)
        for j = 1 : size(gray_im, 2)
            if gray_im(i,j) > threshold
                output_im_1(i, j) = 255;
            else
                output_im_1(i, j) = (gray_im(i,j)*(threshold-gray_im(i,j)))/(threshold*threshold);
            end
        end
end

threshold = 150;
gray_im = double(gray_im);
output_im_3 = gray_im;
for i = 1 : size(gray_im, 1)
        for j = 1 : size(gray_im, 2)
            if gray_im(i,j) > threshold
                output_im_3(i, j) = 255;
            else
                output_im_3(i, j) = (gray_im(i,j)*(threshold-gray_im(i,j)))/(threshold*threshold);
            end
        end
end

threshold = 200;
gray_im = double(gray_im);
output_im_4 = gray_im;
for i = 1 : size(gray_im, 1)
        for j = 1 : size(gray_im, 2)
            if gray_im(i,j) > threshold
                output_im_4(i, j) = 255;
            else
                output_im_4(i, j) = (gray_im(i,j)*(threshold-gray_im(i,j)))/(threshold*threshold);
            end
        end
end

threshold = 250;
gray_im = double(gray_im);
output_im_5 = gray_im;
for i = 1 : size(gray_im, 1)
        for j = 1 : size(gray_im, 2)
            if gray_im(i,j) > threshold
                output_im_5(i, j) = 255;
            else
                output_im_5(i, j) = (gray_im(i,j)*(threshold-gray_im(i,j)))/(threshold*threshold);
            end
        end
end

figure(3);
subplot(2,3,1);
imshow(im);
title("Original Image")
subplot(2,3,2);
imshow(output_im_1);
title("50% Threshold");
subplot(2,3,3);
imshow(output_im_2);
title("100% Threshold");
subplot(2,3,4);
imshow(output_im_3);
title("150% Threshold");
subplot(2,3,5);
imshow(output_im_4);
title("200% Threshold");
subplot(2,3,6);
imshow(output_im_5);
title("250% Threshold");
set(gcf,'position',[10,10,1080,720])