clc
clear all
close all

im1 = imread("flower_in.jpg");
gray_im1 = rgb2gray(im1);

% 8 colors/shades 
gray_im8_1 = gray_im1;
for i = 1 : size(gray_im1,1)
    for j = 1 : size(gray_im1,2)
        gray_im8_1(i,j) = (floor(gray_im1(i,j)/32)+1)*32-16;
    end
end

% 4 colors/shades 
gray_im4_1 = gray_im1;
for i = 1 : size(gray_im1,1)
    for j = 1 : size(gray_im1,2)
        gray_im4_1(i,j) = (floor(gray_im1(i,j)/64)+1)*64-32;
    end
end

im2 = imread("flower2.jpg");
gray_im2 = rgb2gray(im2);

% 8 colors/shades 
gray_im8_2 = gray_im2;
for i = 1 : size(gray_im2,1)
    for j = 1 : size(gray_im2,2)
        gray_im8_2(i,j) = (floor(gray_im2(i,j)/32)+1)*32-16;
    end
end

% 4 colors/shades 
gray_im4_2 = gray_im2;
for i = 1 : size(gray_im2,1)
    for j = 1 : size(gray_im2,2)
        gray_im4_2(i,j) = (floor(gray_im2(i,j)/64)+1)*64-32;
    end
end

gray_im3 = imread("tagore.jpg");


% 8 colors/shades 
gray_im8_3 = gray_im3;
for i = 1 : size(gray_im3,1)
    for j = 1 : size(gray_im3,2)
        gray_im8_3(i,j) = (floor(gray_im3(i,j)/32)+1)*32-16;
    end
end

% 4 colors/shades 
gray_im4_3 = gray_im3;
for i = 1 : size(gray_im3,1)
    for j = 1 : size(gray_im3,2)
        gray_im4_3(i,j) = (floor(gray_im3(i,j)/64)+1)*64-32;
    end
end

im4 = imread("cat.jpg");
gray_im4 = rgb2gray(im4);

% 8 colors/shades 
gray_im8_4 = gray_im4;
for i = 1 : size(gray_im4,1)
    for j = 1 : size(gray_im4,2)
        gray_im8_4(i,j) = (floor(gray_im4(i,j)/32)+1)*32-16;
    end
end

% 4 colors/shades 
gray_im4_4 = gray_im4;
for i = 1 : size(gray_im4,1)
    for j = 1 : size(gray_im4,2)
        gray_im4_4(i,j) = (floor(gray_im4(i,j)/64)+1)*64-32;
    end
end


% subplot(4, 3, 1)
% imshow(im1)
% title("Original")
% subplot(4, 3, 2)
% imshow(gray_im8_1)
% title("Posterize 8")
% subplot(4, 3, 3)
% imshow(gray_im4_1)
% title("Posterize 4")

% subplot(4, 3, 1)
% imshow(im2)
% subplot(4, 3, 2)
% imshow(gray_im8_2)
% subplot(4, 3, 3)
% imshow(gray_im4_2)
% 
% set(gcf,'position',[10,10,1280,720])

tiledlayout(3,3);
nexttile
imshow(gray_im1)
title("Original")
nexttile
imshow(gray_im8_1)
title("Posterize 8 colors")
nexttile
imshow(gray_im4_1)
title("Posterize 4 colors")

% nexttile
% imshow(im2)
% nexttile
% imshow(gray_im8_2)
% nexttile
% imshow(gray_im4_2)

nexttile
imshow(gray_im3)
nexttile
imshow(gray_im8_3)
nexttile
imshow(gray_im4_3)

nexttile
imshow(gray_im4)
nexttile
imshow(gray_im8_4)
nexttile
imshow(gray_im4_4)
set(gcf,'position',[10,10,1080,720])
