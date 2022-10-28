clc
clear all
close all

R_matrix = [32	96	239	205	253	120	135	255; 160	224	250	159	253	35	31	173; 20	80	25	115	225	203	180	225; 120	180	234	176	255	28	255	221; 29	188	221	154	255	253	43	239; 110	29	113	109	195	204	231	252; 168	149	28	240	255	178	93	202; 59	253	252	255	246	205	151	255];

G_matrix = [32	66	219	149	217	219	169	164; 160	224	231	129	124	35	117	173; 30	70	158	102	93	65	103	127; 130	170	126	183	255	211	170	68; 172	93	148	206	188	219	108	205; 81	249	188	174	100	102	198	217; 228	145	172	232	29	236	118	55; 176	252	180	189	100	74	154	130];

B_matrix = [32	96	197	117	181	226	107	116; 160	224	181	112	110	35	254	214; 40	90	189	189	131	84	77	73; 140	190	93	198	153	162	204	146; 214	88	117	235	217	109	196	184; 96	20	120	129	197	102	151	117; 160	140	120	145	206	93	203	103; 143	116	213	136	175	74	170	67];

% rgb_im = zeros(8,8,3);

rgb_im(:,:,1) = R_matrix;
rgb_im(:,:,2) = G_matrix;
rgb_im(:,:,3) = B_matrix;


rgb_im = uint8(rgb_im);

% imshow(rgb_im,'InitialMagnification','fit');

background = zeros(size(rgb_im, 1), size(rgb_im, 2), 'uint8');
redChannel = rgb_im(:,:,1);
greenChannel = rgb_im(:,:,2);
blueChannel = rgb_im(:,:,3); 

just_red = cat(3, redChannel, background, background);
just_green = cat(3, background, greenChannel, background);
just_blue = cat(3, background, background, blueChannel);
imshow(just_blue,'InitialMagnification','fit');

%applying range for 4 colors in all the channels (supposed to)
image4color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image4color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/64)+1)*64-32);
        end
    end
end

% imshow(image4color,'InitialMagnification','fit');
% imhist(image4color);

%applying range for 2 colors in all the channels (supposed to)
image2color = rgb_im;
for c = 1 : size(rgb_im, 3)
    for i = 1 : size(rgb_im, 1)
        for j = 1 : size(rgb_im, 2)
            image2color(i, j, c) = uint8((floor(double(rgb_im(i,j,c))/128)+1)*128-64);
        end
    end
end

% imshow(image2color,'InitialMagnification','fit');
% imhist(image2color);

imshow(just_red,'InitialMagnification','fit')
