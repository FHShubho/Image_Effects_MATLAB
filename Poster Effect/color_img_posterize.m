clc
clear all
close all

im = imread("flower2.jpg");

% image histogram
size(im)

figure(1)
red_channel=im(:,:,1);
green_channel=im(:,:,2);
blue_channel=im(:,:,3);
[red, pixel]=imhist(red_channel);
[green, pixel]=imhist(green_channel);
[blue, pixel]=imhist(blue_channel);
bar(pixel, red,'r');
hold on;
bar(pixel, green,'g');
bar(pixel, blue,'b');
hold off


%image in differenct color channel
background = zeros(size(im, 1), size(im, 2), 'uint8');

just_red = cat(3, red_channel, background, background);
just_green = cat(3, background, green_channel, background);
just_blue = cat(3, background, background, blue_channel);
% imshow(just_blue);


figure(2);
subplot(3,4,1);
imshow(im);
title("Original Image");
subplot(3,4,2);
imshow(red_channel);
title("Red Channel");
subplot(3,4,3);
imshow(green_channel);
title("Green Channel");
subplot(3,4,4);
imshow(blue_channel);
title("Blue Channel");

subplot(3,4,5);
imshow(im);
subplot(3,4,6);
imshow(just_red);
subplot(3,4,7);
imshow(just_green);
subplot(3,4,8);
imshow(just_blue);

subplot(3,4,9);
bar(pixel, red,'r');
hold on;
bar(pixel, green,'g');
bar(pixel, blue,'b');
hold off;
subplot(3,4,10);
imhist(red_channel);
subplot(3,4,11);
imhist(green_channel);
subplot(3,4,12);
imhist(blue_channel);
set(gcf,'position',[10,10,1080,720])

%using range on int values
%colors/shades in each channels - 128, 64, 32, 16, 8, 4, 2

% 2 colors/shades
rgb_im = im;
image2color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image2color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/128)+1)*128-64);
        end
    end
end

% 4 colors/shades
image4color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image4color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/64)+1)*64-32);
        end
    end
end

% 8 colors/shades
image8color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image8color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/32)+1)*32-16);
        end
    end
end

% 16 colors/shades
image16color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image16color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/16)+1)*16-8);
        end
    end
end

% 32 colors/shades
image32color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image32color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/8)+1)*8-4);
        end
    end
end

% 64 colors/shades
image64color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image64color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/4)+1)*4-2);
        end
    end
end

% 128 colors/shades
image128color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image128color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/2)+1)*2);
        end
    end
end

figure(3)
subplot(2,4,1);
imshow(im);
title("All/256 color range");
subplot(2,4,2);
imshow(image128color);
title("128 color range");
subplot(2,4,3);
imshow(image64color);
title("64 color range");
subplot(2,4,4);
imshow(image32color);
title("32 color range");
subplot(2,4,5);
imshow(image16color);
title("16 color range");
subplot(2,4,6);
imshow(image8color);
title("8 color range");
subplot(2,4,7);
imshow(image4color);
title("4 color range");
subplot(2,4,8);
imshow(image2color);
title("2 color range");
set(gcf,'position',[10,10,1080,720])

%look at 2 color range image

red_channel_2=image2color(:,:,1);
green_channel_2=image2color(:,:,2);
blue_channel_2=image2color(:,:,3);
[red_2, pixel]=imhist(red_channel_2);
[green_2, pixel]=imhist(green_channel_2);
[blue_2, pixel]=imhist(blue_channel_2);


background2 = zeros(size(image2color, 1), size(image2color, 2), 'uint8');

just_red_2 = cat(3, red_channel_2, background, background);
just_green_2 = cat(3, background, green_channel_2, background);
just_blue_2 = cat(3, background, background, blue_channel_2);
% imshow(just_blue);


figure(4);
subplot(3,4,1);
imshow(image2color);
title("2 color rnage Image");
subplot(3,4,2);
imshow(just_red_2);
title("Red Channel");
subplot(3,4,3);
imshow(just_green_2);
title("Green Channel");
subplot(3,4,4);
imshow(just_blue_2);
title("Blue Channel");

subplot(3,4,5);
bar(pixel, red_2,'r');
hold on;
bar(pixel, green_2,'g');
bar(pixel, blue_2,'b');
hold off;
subplot(3,4,6);
imhist(red_channel_2);
subplot(3,4,7);
imhist(green_channel_2);
subplot(3,4,8);
imhist(blue_channel_2);

subplot(3,4,9);
imshow(image2color);
subplot(3,4,10);
imshow(red_channel_2);
subplot(3,4,11);
imshow(green_channel_2);
subplot(3,4,12);
imshow(blue_channel_2);
set(gcf,'position',[10,10,1080,720])


