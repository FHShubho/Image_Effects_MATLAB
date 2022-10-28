clc
clear all
close all

im1 = imread("flower_in.jpg");

% 4 range, 64 colors/shades 
color_im64_1 = im1;
for c = 1 : size(im1, 3)
    for i = 1 : size(im1, 1)
        for j = 1 : size(im1, 2)
            color_im64_1(i, j, c) = uint8((floor(double(im1(i,j,c))/64)+1)*64-32);
        end
    end
end

% 2 range, 8 colors/shades 
color_im8_1 = im1;
for c = 1 : size(im1, 3)
    for i = 1 : size(im1, 1)
        for j = 1 : size(im1, 2)
            color_im8_1(i, j, c) = uint8((floor(double(im1(i,j,c))/128)+1)*128-64);
        end
    end
end

im2 = imread("flower2.jpg");

% 4 range, 64 colors/shades 
color_im64_2 = im2;
for c = 1 : size(im2, 3)
    for i = 1 : size(im2, 1)
        for j = 1 : size(im2, 2)
            color_im64_2(i, j, c) = uint8((floor(double(im2(i,j,c))/64)+1)*64-32);
        end
    end
end

% 2 range, 8 colors/shades 
color_im8_2 = im2;
for c = 1 : size(im2, 3)
    for i = 1 : size(im2, 1)
        for j = 1 : size(im2, 2)
            color_im8_2(i, j, c) = uint8((floor(double(im2(i,j,c))/128)+1)*128-64);
        end
    end
end


im3 = imread("kim.jpg");

% 4 range, 64 colors/shades 
color_im64_3 = im3;
for c = 1 : size(im3, 3)
    for i = 1 : size(im3, 1)
        for j = 1 : size(im3, 2)
            color_im64_3(i, j, c) = uint8((floor(double(im3(i,j,c))/64)+1)*64-32);
        end
    end
end

% 2 range, 8 colors/shades 
color_im8_3 = im3;
for c = 1 : size(im3, 3)
    for i = 1 : size(im3, 1)
        for j = 1 : size(im3, 2)
            color_im8_3(i, j, c) = uint8((floor(double(im3(i,j,c))/128)+1)*128-64);
        end
    end
end

im4 = imread("cat.jpg");

% 4 range, 64 colors/shades 
color_im64_4 = im4;
for c = 1 : size(im4, 3)
    for i = 1 : size(im4, 1)
        for j = 1 : size(im4, 2)
            color_im64_4(i, j, c) = uint8((floor(double(im4(i,j,c))/64)+1)*64-32);
        end
    end
end

% 2 range, 8 colors/shades 
color_im8_4 = im4;
for c = 1 : size(im4, 3)
    for i = 1 : size(im4, 1)
        for j = 1 : size(im4, 2)
            color_im8_4(i, j, c) = uint8((floor(double(im4(i,j,c))/128)+1)*128-64);
        end
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
imshow(im1)
title("Original")
nexttile
imshow(color_im64_1)
title("4 range, 64 colors")
nexttile
imshow(color_im8_1)
title("2 range, 8 colors")

% nexttile
% imshow(im2)
% nexttile
% imshow(color_im64_2)
% nexttile
% imshow(color_im8_2)

nexttile
imshow(im3)
nexttile
imshow(color_im64_3)
nexttile
imshow(color_im8_3)

nexttile
imshow(im4)
nexttile
imshow(color_im64_4)
nexttile
imshow(color_im8_4)
set(gcf,'position',[10,10,1080,720])
