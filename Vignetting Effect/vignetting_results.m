clc
clear all
close all

im_1 = double(imread("SAM_1509.JPG"));
CP_1 = [floor(size(im_1,1)/2), floor(size(im_1,2)/2)];

output_im_1 = im_1;
max_D = sqrt(CP_1(1)^2+CP_1(2)^2);
for c = 1 : size(im_1,3)
    for i = 1 : size(im_1, 1)
        for j = 1 : size(im_1, 2)
            output_im_1(i,j,c) = im_1(i,j,c) * ((1 - (sqrt(((i-CP_1(1))^2)+((j-CP_1(2))^2)))/max_D));
        end
    end
end
output_im_1 = uint8(output_im_1);


im_2 = double(imread("DSC_0135.JPG"));
CP_2 = [floor(size(im_2,1)/2), floor(size(im_2,2)/2)];

output_im_2 = im_2;
max_D = sqrt(CP_2(1)^2+CP_2(2)^2);
for c = 1 : size(im_2,3)
    for i = 1 : size(im_2, 1)
        for j = 1 : size(im_2, 2)
            output_im_2(i,j,c) = im_2(i,j,c) * ((1 - (sqrt(((i-CP_2(1))^2)+((j-CP_2(2))^2)))/max_D));
        end
    end
end
output_im_2 = uint8(output_im_2);


im_3 = double(imread("img4.jpg"));
CP_3 = [floor(size(im_3,1)/2), floor(size(im_3,2)/2)];

output_im_3 = im_3;
max_D = sqrt(CP_3(1)^2+CP_3(2)^2);
for c = 1 : size(im_3,3)
    for i = 1 : size(im_3, 1)
        for j = 1 : size(im_3, 2)
            output_im_3(i,j,c) = im_3(i,j,c) * ((1 - (sqrt(((i-CP_3(1))^2)+((j-CP_3(2))^2)))/max_D));
        end
    end
end
output_im_3 = uint8(output_im_3);

%plot together
subplot(3,2,1);
imshow(uint8(im_1));
title("Original Image");
subplot(3,2,2);
imshow(output_im_1);
title("Vignetting Effect");
subplot(3,2,3);
imshow(uint8(im_2));
subplot(3,2,4);
imshow(output_im_2);
subplot(3,2,5);
imshow(uint8(im_3));
subplot(3,2,6);
imshow(output_im_3);
set(gcf,'position',[10,10,1080,720])