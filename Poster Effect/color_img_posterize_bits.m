clc
clear all
close all

im = imread("flower2.jpg");

%using bit changes in binary values
%colors/shades - making 6 msb 0, 6 lsb 0 and 3 msb & 3 lsb 0
% 6 msb 0 2bit/4 colors/shades
rgb_im = im;
rgb_im_6msb0 = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            temp = dec2bin(rgb_im(i,j,c));
            temp(:, 1:6) = '0';
            rgb_im_6msb0(i, j, c) = uint8(bin2dec(temp));
        end
    end
end

% 6 lsb 0 2bit/4 colors/shades
rgb_im_6lsb0 = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            temp = dec2bin(rgb_im(i,j,c));
            temp(:, 3:8) = '0';
            rgb_im_6lsb0(i, j, c) = uint8(bin2dec(temp));
        end
    end
end

% 3 msb & 3 lsb 0
rgb_im_2bit = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            temp = dec2bin(rgb_im(i,j,c));
            temp(:, 1:3) = '0';
            temp(:, 6:8) = '0';
            rgb_im_2bit(i, j, c) = uint8(bin2dec(temp));
        end
    end
end


%look at the different bit images and their histogram
red_channel=rgb_im(:,:,1);
green_channel=rgb_im(:,:,2);
blue_channel=rgb_im(:,:,3);
[red, pixel]=imhist(red_channel);
[green, pixel]=imhist(green_channel);
[blue, pixel]=imhist(blue_channel);

red_channel_1=rgb_im_6msb0(:,:,1);
green_channel_1=rgb_im_6msb0(:,:,2);
blue_channel_1=rgb_im_6msb0(:,:,3);
[red_1, pixel]=imhist(red_channel_1);
[green_1, pixel]=imhist(green_channel_1);
[blue_1, pixel]=imhist(blue_channel_1);

red_channel_2=rgb_im_6lsb0(:,:,1);
green_channel_2=rgb_im_6lsb0(:,:,2);
blue_channel_2=rgb_im_6lsb0(:,:,3);
[red_2, pixel]=imhist(red_channel_2);
[green_2, pixel]=imhist(green_channel_2);
[blue_2, pixel]=imhist(blue_channel_2);

red_channel_3=rgb_im_2bit(:,:,1);
green_channel_3=rgb_im_2bit(:,:,2);
blue_channel_3=rgb_im_2bit(:,:,3);
[red_3, pixel]=imhist(red_channel_3);
[green_3, pixel]=imhist(green_channel_3);
[blue_3, pixel]=imhist(blue_channel_3);


figure(1);
subplot(2,4,1);
imshow(rgb_im);
title("8 bit/original image");
subplot(2,4,2);
imshow(rgb_im_6msb0);
title("2 bit/6 msb 0");
subplot(2,4,3);
imshow(rgb_im_6lsb0);
title("2 bit/6 msb 0l");
subplot(2,4,4);
imshow(rgb_im_2bit);
title("2 bit/3 msb & 3 lsb 0");

subplot(2,4,5);
bar(pixel, red,'r');
hold on;
bar(pixel, green,'g');
bar(pixel, blue,'b');
hold off;
subplot(2,4,6);
bar(pixel, red_1,'r');
hold on;
bar(pixel, green_1,'g');
bar(pixel, blue_1,'b');
hold off;
subplot(2,4,7);
bar(pixel, red_2,'r');
hold on;
bar(pixel, green_2,'g');
bar(pixel, blue_2,'b');
hold off;
subplot(2,4,8);
bar(pixel, red_3,'r');
hold on;
bar(pixel, green_3,'g');
bar(pixel, blue_3,'b');
hold off;

set(gcf,'position',[10,10,1080,720])


