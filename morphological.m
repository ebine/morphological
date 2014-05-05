% This program performs morphological operations on binary image
% Part(1) : Entering the image for MATLAB
fprintf('\n This program performs morphological operations on binary image')
clc;
close all;

a = imread(uigetfile('.bmp'));
try
 a=rgb2gray(a);
catch
end
%  a = im2bw(a_1,graythresh(a_1));

siz = size(a);
figure
imshow(a)
title('Input Image after conversion to Binary')
fprintf('\n Click (1) to Perform Erosion')
fprintf('\n Click (2) to Perform Dilation')
fprintf('\n Click (3) to Perform Binary Opening')
fprintf('\n Click (4) to Perform Binary Closing')

choice = input('\n You select the Choice number : ');
switch (choice)
case 1
      se = strel('disk',4);
a1 = imerode(a,se);
se = strel('disk',8);
a2 = imerode(a,se);
se = strel('disk',16);
a3 = imerode(a,se);
case 2
    se = strel('disk',4);
a1 = imdilate(a,se);
se = strel('disk',8);
a2 = imdilate(a,se);
se = strel('disk',16);
a3 = imdilate(a,se);
        
case 3
   se = strel('disk',4);
a1 = imopen(a,se);
se = strel('disk',8);
a2 = imopen(a,se);
se = strel('disk',16);
a3 = imopen(a,se);
        
case 4
se = strel('disk',4);
a1 = imclose(a,se);
se = strel('disk',8);
a2 = imclose(a,se);
se = strel('disk',16);
a3 = imclose(a,se);
        
otherwise
    fprintf('\n Sorry! Wrong Choice')
end
figure
title('Input Image')
subplot(2,2,1)
imshow(a)
subplot(2,2,2)
imshow(a1)
title('Result Image-4*4')
subplot(2,2,3)
imshow(a2)
title('Result Image-8*8')
subplot(2,2,4)
imshow(a3)
title('Result Image-16*16')



    
