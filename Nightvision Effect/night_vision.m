clc
clear all
close all

im = imread("night_vision_in.jpg");

red_channel=im(:,:,1);
green_channel=im(:,:,2);
blue_channel=im(:,:,3);
[red, pixel]=imhist(red_channel);
[green, pixel]=imhist(green_channel);
[blue, pixel]=imhist(blue_channel);

background = zeros(size(im, 1), size(im, 2), 'uint8');

just_red = cat(3, red_channel, background, background);
just_green = cat(3, background, green_channel, background);
just_blue = cat(3, background, background, blue_channel);

figure(1);
subplot(2,1,1);
imshow(im);
title("Original Image");
subplot(2,1,2);
bar(pixel, red,'r');
hold on;
bar(pixel, green,'g');
bar(pixel, blue,'b');
hold off
title("Image Histogram");
set(gcf,'position',[10,10,1080,720])

figure(2)
subplot(3,3,1);
imshow(just_red);
title("Red Channel");
subplot(3,3,[2,3]);
imhist(red_channel);

subplot(3,3,4);
imshow(just_green);
title("Green Channel");
subplot(3,3,[5,6]);
imhist(green_channel);

subplot(3,3,7);
imshow(just_blue);
title("Blue Channel")
subplot(3,3,[8,9]);
imhist(blue_channel);
set(gcf,'position',[10,10,1080,720])

% implementing the formula
% Output R = Input G / 2, Output B = 2 x Output R, Output G = 2 x Output B
out_R = green_channel/2;
out_B = out_R*2;
out_G = out_B*2;
output_im = cat(3, out_R, out_G, out_B);

[red_out, pixel]=imhist(out_R);
[green_out, pixel]=imhist(out_G);
[blue_out, pixel]=imhist(out_B);

figure(3);
subplot(2,1,1);
imshow(output_im);
title("Output Image");
subplot(2,1,2);
bar(pixel, red_out,'r');
hold on;
bar(pixel, green_out,'g');
bar(pixel, blue_out,'b');
hold off
title("Image Histogram");
set(gcf,'position',[10,10,1080,720])


background = zeros(size(output_im, 1), size(output_im, 2), 'uint8');
just_red_out = cat(3, out_R, background, background);
just_green_out = cat(3, background, out_G, background);
just_blue_out = cat(3, background, background, out_B);

figure(4)
subplot(3,3,1);
imshow(just_red_out);
title("Red Channel");
subplot(3,3,[2,3]);
imhist(out_R);

subplot(3,3,4);
imshow(just_green_out);
title("Green Channel");
subplot(3,3,[5,6]);
imhist(out_R);

subplot(3,3,7);
imshow(just_blue_out);
title("Blue Channel")
subplot(3,3,[8,9]);
imhist(out_R);
set(gcf,'position',[10,10,1080,720])


