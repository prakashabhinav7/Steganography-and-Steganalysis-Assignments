% This code is for Homework 1, Problem 1, Vignetting, in Math 535, spring 2016
% and was authored by (Abhinav Prakash)

function [Color,H,W,Mx,Mn,CntrX,CntrY]  = getImageInfo(inputImage)

%Information about graphics file
inputImageInfo=imfinfo(inputImage);

%Field of structure array, value = getfield(struct, 'field'),where struct is a 1-by-1 structure, returns the contents of the specified field, equivalent to value = struct.field. Pass field references as strings.
colorType = getfield(inputImageInfo,'ColorType');

%Compare strings, tf = strcmp(s1,s2) compares strings s1 and s2 and returns 1 (true) if the two are identical. Otherwise, strcmp returns 0 (false). Strings are considered identical if the size and content of each are the same. The return result, tf, is of data type logical.
if(strcmp(colorType ,'truecolor'))
    Color=1;
else if(strcmp(colorType ,'grayscale'))
    Color=0;
    else
    error('Types shoule be truecolor or grayscale.')
    end
end


% Get the number of rows and columns
[H W ]=size(inputImage);

% Get the maximum and minimum intensities
Mx = max(inputImage(:));
Mn = min(inputImage(:));

% Calculate the geometric center of the image for all cases...
% ODD or EVEN

if (H == 1)
    CntrX = 1;
else if(mod(H,2)~=0 && H ~= 1)
        CntrX = (H+1)/2;
    else CntrX = H/2;
    end
end
    
if (W == 1)
    CntrY = 1;
else if(mod(W,2)~=0 && W ~= 1)
        CntrY = (W+1)/2;
    else CntrY = W/2;
    end
end


end