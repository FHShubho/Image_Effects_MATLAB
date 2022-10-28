clc
clear all
close all

im = imread("photocopy_in.jpg");
gray_im = double(rgb2gray(im));


% implementing the formula for multiple images
threshold = 100;
output_im_1= gray_im;
for i = 1 : size(gray_im, 1)
        for j = 1 : size(gray_im, 2)
            if gray_im(i,j) > threshold
                output_im_1(i, j) = 255;
            else
                output_im_1(i, j) = (gray_im(i,j)*(threshold-gray_im(i,j)))/(threshold*threshold);
            end
        end
end
imwrite(output_im_1, "output_1.jpg");

im_2 = imread("img3.jpg");
gray_im_2 = double(rgb2gray(im_2));
output_im_2= gray_im_2;
for i = 1 : size(gray_im_2, 1)
        for j = 1 : size(gray_im_2, 2)
            if gray_im_2(i,j) > threshold
                output_im_2(i, j) = 255;
            else
                output_im_2(i, j) = (gray_im_2(i,j)*(threshold-gray_im_2(i,j)))/(threshold*threshold);
            end
        end
end
imwrite(output_im_2, "output_2.jpg");

im_3 = imread("kim.jpg");
gray_im_3 = double(rgb2gray(im_3));
output_im_3= gray_im_3;
for i = 1 : size(gray_im_3, 1)
        for j = 1 : size(gray_im_3, 2)
            if gray_im_3(i,j) > threshold
                output_im_3(i, j) = 255;
            else
                output_im_3(i, j) = (gray_im_3(i,j)*(threshold-gray_im_3(i,j)))/(threshold*threshold);
            end
        end
end
imwrite(output_im_3, "output_3.jpg");

% plot them together
subplot(3,2,1);
imshow(im);
title("Orginial Image");
subplot(3,2,2);
imshow(output_im_1);
title("Photocopy Effect");
subplot(3,2,3);
imshow(im_2);
subplot(3,2,4);
imshow(output_im_2);
subplot(3,2,5);
imshow(im_3);
subplot(3,2,6);
imshow(output_im_3);

set(gcf,'position',[10,10,1080,720])