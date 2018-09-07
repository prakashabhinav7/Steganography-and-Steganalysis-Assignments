% This code is for Homework 1, Vignetting, in Math 535, spring 2016
% and was authored by Abhinav Prakash

function [imageData]=VignettingEffect(inputImage,scaleLevel)

%Check if the image is a truecolor or grayscale

inputImageInfo=imfinfo(inputImage);
colorType = getfield(inputImageInfo,'ColorType');
if(strcmp(colorType ,'truecolor'))
    colored=1;
else if(strcmp(colorType ,'grayscale'))
    colored=0;
    else
    error('Types should be truecolor or grayscale.');
    end
end

% Read an image using imread function
imageData=imread(inputImage);

% grab the number of rows, columns, and channels
%nr=height, nc=width, nChannels=3, RGB
[nr, nc, nChannels]=size(imageData);

if scaleLevel < 0
    error('Scale value must be > 0');
end

%setting up the geometric center of the image and calculating
%maximum distance of the pixels from the center
CntrX = nc/3;
CntrY = nr/3; 
%maxDistance is the maximum distance possible between the center of the 
%image and the farthest point on the image
maxDistance = sqrt (CntrY^2 + CntrX^2);

%for colored images
dbleimg = double(imageData);
if(colored==1)
    for (i=1:nr)
        for (j=1:nc)
           %% dis is the distance of the pixel at position (i,j) from the center
           dis = sqrt (abs(i-CntrY)^2 + abs(j-CntrX)^2);          
           %% reducing pixel brightness based on distance from center for all bands
           imageData(i,j,1) = imageData(i,j,1)* (1 - (1-scaleLevel)*(dis/maxDistance) );
           imageData(i,j,2) = imageData(i,j,2)* (1 - (1-scaleLevel)*(dis/maxDistance) );
           imageData(i,j,3) = imageData(i,j,3)* (1 - (1-scaleLevel)*(dis/maxDistance) );
       end
    end
else

%for grayscale images
     for (i=1:nr)
        for (j=1:nc)
           dis = sqrt (abs(i-CntrY)^2 + abs(j-CntrX)^2);          
           %% reducing pixel brightness based on distance from center
           imageData(i,j) = imageData(i,j)* (1 - (1-scaleLevel)*(dis/maxDistance) );
       end
    end
end