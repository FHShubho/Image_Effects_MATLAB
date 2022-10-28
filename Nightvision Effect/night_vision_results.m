clc
clear all
close all

%image 1
im_1 = imread("night_vision_in.jpg");

green_channel_1=im_1(:,:,2);

out_R_1 = green_channel_1/2;
out_B_1 = out_R_1*2;
out_G_1 = out_B_1*2;
output_im_1 = cat(3, out_R_1, out_G_1, out_B_1);

%image 2
im_2 = imread("nsu_ace.jpg");

green_channel_2=im_2(:,:,2);

out_R_2 = green_channel_2/2;
out_B_2 = out_R_2*2;
out_G_2 = out_B_2*2;
output_im_2 = cat(3, out_R_2, out_G_2, out_B_2);

%image 3
%image 1
im_3 = imread("Busy_Dhaka_Night.jpg");

green_channel_3=im_3(:,:,2);

out_R_3 = green_channel_3/2;
out_B_3 = out_R_3*3;
out_G_3 = out_B_3*3;
output_im_3 = cat(3, out_R_3, out_G_3, out_B_3);


%plot thme
subplot(3,2,1);
imshow(im_1);
title("Original Image");
subplot(3,2,2);
imshow(output_im_1);
title("Nightvision Effect");
subplot(3,2,3);
imshow(im_2);
subplot(3,2,4);
imshow(output_im_2);
subplot(3,2,5);
imshow(im_3);
subplot(3,2,6);
imshow(output_im_3);
set(gcf,'position',[10,10,1080,720])