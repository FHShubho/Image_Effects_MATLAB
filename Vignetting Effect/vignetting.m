clc
clear all
close all

im = double(imread("vignetting_in.JPG"));

% find the center pixel from the image size
CP = [floor(size(im,1)/2), floor(size(im,2)/2)];

% trial 1 - blackout all the pixels that are half distance away from center
output_im = im;
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            if i > CP(1)+(size(im,1)/4) || i < (size(im,1)/4) || j > CP(2)+(size(im,2)/4) || j < (size(im,2)/4)
                output_im(i,j,c) = 0;
            end
        end
    end
end
output_im = uint8(output_im);
%imshow(output_im);

%reduce the dark values on the outside range
output_im_2 = im;
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            if i > CP(1)+(size(im,1)/4) || i < (size(im,1)/4) || j > CP(2)+(size(im,2)/4) || j < (size(im,2)/4)
                output_im_2(i,j,c) = im(i,j,c) * (1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max(CP));
            end
        end
    end
end
output_im_2 = uint8(output_im_2);
% imshow(output_im_2);


%apply it on the whole
output_im_3 = im;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
%             output_im_3(i,j,c) = im(i,j,c) * (1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max(CP));
            output_im_3(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D));
        end
    end
end
output_im_3 = uint8(output_im_3);
imshow(output_im_3)

%apply with different dark weight
%0.25
output_im_4 = im;
dark_weight = 0.25;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_4(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D)*dark_weight);
        end
    end
end
output_im_4 = uint8(output_im_4);

%0.50
output_im_5 = im;
dark_weight = 0.50;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_5(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D)*dark_weight);
        end
    end
end
output_im_5 = uint8(output_im_5);

% 0.75
output_im_6 = im;
dark_weight = 0.75;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_6(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D)*dark_weight);
        end
    end
end
output_im_6 = uint8(output_im_6);

% 1.25
output_im_7 = im;
dark_weight = 1.25;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_7(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D)*dark_weight);
        end
    end
end
output_im_7 = uint8(output_im_7);

% 1.50
output_im_8 = im;
dark_weight = 1.5;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_8(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D)*dark_weight);
        end
    end
end
output_im_8 = uint8(output_im_8);

% 1.75
output_im_9 = im;
dark_weight = 1.75;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_9(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D)*dark_weight);
        end
    end
end
output_im_9 = uint8(output_im_9);

% 2
output_im_10 = im;
dark_weight = 2;
max_D = sqrt(CP(1)^2+CP(2)^2);
for c = 1 : size(im,3)
    for i = 1 : size(im, 1)
        for j = 1 : size(im, 2)
            output_im_10(i,j,c) = im(i,j,c) * ((1 - (sqrt(((i-CP(1))^2)+((j-CP(2))^2)))/max_D)*dark_weight);
        end
    end
end
output_im_10 = uint8(output_im_10);

% plot together
subplot(3,3,1);
imshow(uint8(im));
title("Original Image");
subplot(3,3,2);
imshow(output_im_4);
title("Darkness 0.25");
subplot(3,3,3);
imshow(output_im_5);
title("Darkness 0.5");
subplot(3,3,4);
imshow(output_im_6);
title("Darkness 0.75");
subplot(3,3,5);
imshow(output_im_3);
title("Darkness 1.0");
subplot(3,3,6);
imshow(output_im_7);
title("Darkness 1.25");
subplot(3,3,7);
imshow(output_im_8);
title("Darkness 1.5");
subplot(3,3,8);
imshow(output_im_9);
title("Darkness 1.75");
subplot(3,3,9);
imshow(output_im_9);
title("Darkness 2.0");
set(gcf,'position',[10,10,1080,720])
