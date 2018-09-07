% This code is for Homework 1, Problem 1, Vignetting, in Math 535, spring 2016
% and was authored by (Abhinav Prakash)

inputImage1 = 'image1small.jpg';
inputImage2 = 'image2small.jpg';
inputImage3 = 'image3small.jpg';
inputImage4 = 'unknowngray-small.jpg';

%Displaying the details for each image

[Color,H,W,Mx,Mn,CntrX,CntrY]  = getImageInfo(inputImage1);
disp('Color value is:'); Color
disp('number of rows is:'); H
disp('number of columns is:');W
disp('Maximum intensity is:');Mx
disp('Minimum intensity is:');Mn
disp('The row center is:');CntrX
disp('The column center is:');CntrY
disp('----------------------------------------');


[Color,H,W,Mx,Mn,CntrX,CntrY]  = getImageInfo(inputImage2);
disp('Color value is:'); Color
disp('number of rows is:'); H
disp('number of columns is:');W
disp('Maximum intensity is:');Mx
disp('Minimum intensity is:');Mn
disp('The row center is:');CntrX
disp('The column center is:');CntrY
disp('----------------------------------------');


[Color,H,W,Mx,Mn,CntrX,CntrY]  = getImageInfo(inputImage3);
disp('Color value is:'); Color
disp('number of rows is:'); H
disp('number of columns is:');W
disp('Maximum intensity is:');Mx
disp('Minimum intensity is:');Mn
disp('The row center is:');CntrX
disp('The column center is:');CntrY
disp('----------------------------------------');

[Color,H,W,Mx,Mn,CntrX,CntrY]  = getImageInfo(inputImage4);
disp('Color value is:'); Color
disp('number of rows is:'); H
disp('number of columns is:');W
disp('Maximum intensity is:');Mx
disp('Minimum intensity is:');Mn
disp('The row center is:');CntrX
disp('The column center is:');CntrY
disp('----------------------------------------');