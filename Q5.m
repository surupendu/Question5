clear all
clc

I1 = imread('C:\Users\student\Documents\Question5\text.png');

figure(1);
imshow(I1);
axis on

figure(2)
imhist(I1);

level = graythresh(I1);
BW = im2bw(I1,level);
BW = imcomplement(BW);
figure(3)
imshow(BW);

  c
kernel = ones(20,20);
kernel = uint8(kernel);
se = strel(kernel);
BW2 = imclose (BW,se);
kernel = ones(15,10);
kernel = uint8(kernel);
se = strel(kernel);
BW2 = imdilate(BW2,se);

I1 = double(I1);
BW2 = double(BW2);
I = I1.*BW2;
I = uint8(I);
figure(4);
imshow(I);