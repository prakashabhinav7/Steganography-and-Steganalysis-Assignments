% This code is for Homework 1, Vignetting, in Math 535, spring 2016
% and was authored by Abhinav Prakash

clear;

%the image to be passed to the vignetting function
imgSource = 'image1small.jpg';

%problem2 and problem3
[vignettImg0]=VignettingEffect(imgSource, 1);
%last bit of the subplot function determines the position
%of the image on the subplot matrix

subplot(2,3,1);
imshow(vignettImg0);
xlabel('f factor = 1 (original)');

[vignettImg1]=VignettingEffect(imgSource, 0.8);
subplot(2,3,2);
imshow(vignettImg1);
xlabel('f factor = 0.80');

[vignettImg2]=VignettingEffect(imgSource, 0.5);
subplot(2,3,3);
imshow(vignettImg2);
xlabel('f factor = 0.50');

[vignettImg3]=VignettingEffect(imgSource, 0.3);
subplot(2,3,4);
imshow(vignettImg3);
xlabel('f factor = 0.30');

[vignettImg3]=VignettingEffect(imgSource, 0.25);
subplot(2,3,5);
imshow(vignettImg3);
xlabel('f factor = 0.25');

[vignettImg3]=VignettingEffect(imgSource, 0);
subplot(2,3,6);
imshow(vignettImg3);
xlabel('f factor = 0');
