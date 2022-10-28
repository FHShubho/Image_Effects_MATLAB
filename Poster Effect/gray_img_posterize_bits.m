clc
clear all
close all

im = imread("flower2.jpg");
gray_im = rgb2gray(im);


%using bit changes in binary values
%colors/shades - making 6 msb 0, 6 lsb 0 and 3 msb & 3 lsb 0
% 6 msb 0 2bit/4 colors/shades
gray_im_6msb0 = dec2bin(gray_im);
gray_im_6msb0(:, 1:6) = '0';
gray_im_6msb0 = bin2dec(gray_im_6msb0);
gray_im_6msb0 = reshape(gray_im_6msb0, size(gray_im));

%verify the unique color number
% size(unique(gray_im_6msb0))

% 6 lsb 0 2bit/4 colors/shades
gray_im_6lsb0 = dec2bin(gray_im);
gray_im_6lsb0(:, 3:8) = '0';
gray_im_6lsb0 = bin2dec(gray_im_6lsb0);
gray_im_6lsb0 = reshape(gray_im_6lsb0, size(gray_im));

% 3 msb and 3 lsb 0 2bit/4 colors/shades
gray_im_2bit = dec2bin(gray_im);
gray_im_2bit(:, 1:3) = '0';
gray_im_2bit(:, 6:8) = '0';
gray_im_2bit = bin2dec(gray_im_2bit);
gray_im_2bit = reshape(gray_im_2bit, size(gray_im));
% imshow(gray_im_2bit)

%colors/shades - making 5 msb 0, 5 lsb 0 and 2 msb & 3 lsb 0
% 5 msb 0 3bit/8 colors/shades
gray_im_5msb0 = dec2bin(gray_im);
gray_im_5msb0(:, 1:5) = '0';
gray_im_5msb0 = bin2dec(gray_im_5msb0);
gray_im_5msb0 = reshape(gray_im_5msb0, size(gray_im));

% 5 lsb 0 3bit/8 colors/shades
gray_im_5lsb0 = dec2bin(gray_im);
gray_im_5lsb0(:, 4:8) = '0';
gray_im_5lsb0 = bin2dec(gray_im_5lsb0);
gray_im_5lsb0 = reshape(gray_im_5lsb0, size(gray_im));

% 2 msb and 3 lsb 0 3bit/8 colors/shades
gray_im_3bit = dec2bin(gray_im);
gray_im_3bit(:, 1:2) = '0';
gray_im_3bit(:, 6:8) = '0';
gray_im_3bit = bin2dec(gray_im_3bit);
gray_im_3bit = reshape(gray_im_3bit, size(gray_im));

%colors/shades - making 4 msb 0, 4 lsb 0 and 2 msb & 2 lsb 0
% 4 msb 0 4bit/16 colors/shades
gray_im_4msb0 = dec2bin(gray_im);
gray_im_4msb0(:, 1:4) = '0';
gray_im_4msb0 = bin2dec(gray_im_4msb0);
gray_im_4msb0 = reshape(gray_im_4msb0, size(gray_im));

% 4 lsb 0 4bit/16 colors/shades
gray_im_4lsb0 = dec2bin(gray_im);
gray_im_4lsb0(:, 5:8) = '0';
gray_im_4lsb0 = bin2dec(gray_im_4lsb0);
gray_im_4lsb0 = reshape(gray_im_4lsb0, size(gray_im));

% 2 msb and 2 lsb 0 4bit/16 colors/shades
gray_im_4bit = dec2bin(gray_im);
gray_im_4bit(:, 1:2) = '0';
gray_im_4bit(:, 7:8) = '0';
gray_im_4bit = bin2dec(gray_im_4bit);
gray_im_4bit = reshape(gray_im_4bit, size(gray_im));


% %plot the images side by side
% figure(1)
% tiledlayout(3,4);
% nexttile;
% imshow(gray_im);
% title("Original/8 bit Image");
% 
% nexttile;
% imshow(gray_im_6msb0);
% title("2bit/6 msb 0");
% 
% nexttile;
% imshow(gray_im_6lsb0);
% title("2bit/6 lsb 0");
% 
% nexttile;
% imshow(gray_im_2bit);
% title("2bit/6 msb & lsb 0");
% 
% nexttile;
% imshow(gray_im);
% title("Original/8 bit Image");
% 
% nexttile;
% imshow(gray_im_5msb0);
% title("3bit/5 msb 0");
% 
% nexttile;
% imshow(gray_im_5lsb0);
% title("3bit/5 lsb 0");
% 
% nexttile;
% imshow(gray_im_3bit);
% title("3bit/2 msb & 3 lsb 0");
% 
% nexttile;
% imshow(gray_im);
% title("Original/8 bit Image");
% 
% nexttile;
% imshow(gray_im_4msb0);
% title("4bit/4 msb 0");
% 
% nexttile;
% imshow(gray_im_4lsb0);
% title("4bit/4 lsb 0");
% 
% nexttile;
% imshow(gray_im_4bit);
% title("4bit/2 msb & 2 lsb 0");
% 
% set(gcf,'position',[10,10,1280,720])



% figure(2)
% subplot(3,4,1);
% imhist(gray_im);
% title("Original/8 bit Image");
% 
% subplot(3,4,2);
% imhist(uint8(gray_im_6msb0));
% title("2bit/6 msb 0");
% 
% subplot(3,4,3);
% imhist(uint8(gray_im_6lsb0));
% title("2bit/6 lsb 0");
% 
% subplot(3,4,4);
% imhist(uint8(gray_im_2bit));
% title("2bit/6 msb & lsb 0");
% 
% subplot(3,4,5);
% imhist(gray_im);
% title("Original/8 bit Image");
% 
% subplot(3,4,6);
% imhist(uint8(gray_im_5msb0));
% title("3bit/5 msb 0");
% 
% subplot(3,4,7);
% imhist(uint8(gray_im_5lsb0));
% title("3bit/5 lsb 0");
% 
% subplot(3,4,8);
% imhist(uint8(gray_im_3bit));
% title("3bit/2 msb & 3 lsb 0");
% 
% subplot(3,4,9);
% imhist(gray_im);
% title("Original/8 bit Image");
% 
% subplot(3,4,10);
% imhist(uint8(gray_im_4msb0));
% title("4bit/4 msb 0");
% 
% subplot(3,4,11);
% imhist(uint8(gray_im_4lsb0));
% title("4bit/4 lsb 0");
% 
% subplot(3,4,12);
% imhist(uint8(gray_im_4bit));
% title("4bit/2 msb & 2 lsb 0");
% 
% set(gcf,'position',[10,10,1280,720])