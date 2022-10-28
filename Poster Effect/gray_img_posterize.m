clc
clear all
close all

im = imread("flower2.jpg");
gray_im = rgb2gray(im);


%using range on int values (basically range of gray shades)
%colors/shades - 128, 64, 32, 16, 8, 4, 2

% 128 colors/shades
gray_im128 = gray_im;
for i = 1 : size(gray_im,1)
    for j = 1 : size(gray_im,2)
        gray_im128(i,j) = (floor(gray_im(i,j)/2)+1)*2;
    end
end
%verify the unique color number
% size(unique(gray_im128))

% 64 colors/shades 
gray_im64 = gray_im;
for i = 1 : size(gray_im,1)
    for j = 1 : size(gray_im,2)
        gray_im64(i,j) = (floor(gray_im(i,j)/4)+1)*4-2;
    end
end
%verify the unique color number
% size(unique(gray_im64))

% 32 colors/shades 
gray_im32 = gray_im;
for i = 1 : size(gray_im,1)
    for j = 1 : size(gray_im,2)
        gray_im32(i,j) = (floor(gray_im(i,j)/8)+1)*8-4;
    end
end
%verify the unique color number
% size(unique(gray_im64))

% 16 colors/shades 
gray_im16 = gray_im;
for i = 1 : size(gray_im,1)
    for j = 1 : size(gray_im,2)
        gray_im16(i,j) = (floor(gray_im(i,j)/16)+1)*16-8;
    end
end
%verify the unique color number
% size(unique(gray_im16))

% 8 colors/shades 
gray_im8 = gray_im;
for i = 1 : size(gray_im,1)
    for j = 1 : size(gray_im,2)
        gray_im8(i,j) = (floor(gray_im(i,j)/32)+1)*32-16;
    end
end
%verify the unique color number
size(unique(gray_im8))
imwrite(gray_im8, 'flower2_gray_8bits.jpg');

% 4 colors/shades 
gray_im4 = gray_im;
for i = 1 : size(gray_im,1)
    for j = 1 : size(gray_im,2)
        gray_im4(i,j) = (floor(gray_im(i,j)/64)+1)*64-32;
    end
end
%verify the unique color number
size(unique(gray_im4))
imwrite(gray_im4, 'flower2_gray_4bits.jpg');

% 2 colors/shades (basically b&w)
gray_im2 = gray_im;
for i = 1 : size(gray_im,1)
    for j = 1 : size(gray_im,2)
        gray_im2(i,j) = (floor(gray_im(i,j)/128)+1)*128-64;
    end
end
%verify the unique color number
size(unique(gray_im2))
imwrite(gray_im2, 'flower2_gray_2bits.jpg');


%plot the images side by side
figure(1)
subplot(2, 4, 1)
imshow(gray_im)
title("Original")
subplot(2, 4, 2)
imshow(gray_im128)
title("128 color/shades")
subplot(2, 4, 3)
imshow(gray_im64)
title("64 color/shades")
subplot(2, 4, 4)
imshow(gray_im32)
title("32 color/shades")
subplot(2, 4, 5)
imshow(gray_im16)
title("16 color/shades")
subplot(2, 4, 6)
imshow(gray_im8)
title("8 color/shades")
subplot(2, 4, 7)
imshow(gray_im4)
title("4 color/shades")
subplot(2, 4, 8)
imshow(gray_im2)
title("2 color/shades")
set(gcf,'position',[10,10,1280,720])

figure(2)
subplot(2, 4, 1)
imhist(gray_im)
title("Original")
subplot(2, 4, 2)
imhist(gray_im128)
title("128 color/shades")
subplot(2, 4, 3)
imhist(gray_im64)
title("64 color/shades")
subplot(2, 4, 4)
imhist(gray_im32)
title("32 color/shades")
subplot(2, 4, 5)
imhist(gray_im16)
title("16 color/shades")
subplot(2, 4, 6)
imhist(gray_im8)
title("8 color/shades")
subplot(2, 4, 7)
imhist(gray_im4)
title("4 color/shades")
subplot(2, 4, 8)
imhist(gray_im2)
title("2 color/shades")
set(gcf,'position',[10,10,1280,720])