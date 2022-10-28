clc
clear all
close all

im_1 = imread("SAM_1509.JPG");

output_im_1 = im_1;
for c = 1 : size(im_1, 3)
    for i = 1 : size(im_1, 1)
        k = size(im_1, 2);
        for j = 1 : size(im_1, 2)
            output_im_1(i,k,c) = im_1(i,j,c);
            k = k-1;
        end
    end
end

im_2 = imread("img3.jpg");

output_im_2 = im_2;
for c = 1 : size(im_2, 3)
    for i = 1 : size(im_2, 1)
        k = size(im_2, 2);
        for j = 1 : size(im_2, 2)
            output_im_2(i,k,c) = im_2(i,j,c);
            k = k-1;
        end
    end
end

im_3 = imread("img4.jpg");

output_im_3 = im_3;
for c = 1 : size(im_3, 3)
    for i = 1 : size(im_3, 1)
        k = size(im_3, 2);
        for j = 1 : size(im_3, 2)
            output_im_3(i,k,c) = im_3(i,j,c);
            k = k-1;
        end
    end
end

subplot(3,2,1);
imshow(im_1);
title("Original Image");
subplot(3,2,2);
imshow(output_im_1);
title("Mirror Image");

subplot(3,2,3);
imshow(im_2);
title("Original Image");
subplot(3,2,4);
imshow(output_im_2);
title("Mirror Image");

subplot(3,2,5);
imshow(im_3);
title("Original Image");
subplot(3,2,6);
imshow(output_im_3);
title("Mirror Image");
set(gcf,'position',[10,10,1080,720])