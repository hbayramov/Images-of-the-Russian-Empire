% BBM 413 - Fundamentals of Image Processing, Fall 2013
% Programming Assignment 1, starter Matlab code
% Adapted from the code provided by Alexei A. Efros
% 21.02.2012 (Erkut Erdem)

% PART 1

% name of the input file
imname = '00888v.jpg';

% read in the glass plate input image
fullim = imread(imname);

% convert to double matrix 
fullim = im2double(fullim);

% compute the height of each part (just 1/3 of total)
height = floor(size(fullim,1)/3);
% divide the input image into three color channels
B = fullim(1:height,:);
G = fullim(height+1:height*2,:);
R = fullim(height*2+1:height*3,:);


% simple approach
RGB = cat(3,R,G,B);
imwrite(RGB,'unaligned.jpg');


% Align the images 
aG = im_align(G,B);
aR = im_align(R,B);

rs = imcrop(cat(3,aR,aG,B),[21.5 16.5 344 299]);
imwrite(rs,'aligned.jpg');

% Enhance the aligned image
newRange = 1.0;
imgMin = 0.1;
imgMax = 0.9;
rs = (rs-imgMin)/(imgMax-imgMin)*newRange;

% open figure

imwrite(rs,'enhancement.jpg');
clear

% PART 2
%structD = load('0_10_10507.mat');
%image1 = structD.I_lab;
%get channels from lab image
%Lchannel = image1(:,:,1);
%Achannel = image1(:,:,2);
%Bchannel = image1(:,:,3);
%first convert to rgb
%image2 = Lab2RGB(Lchannel,Achannel,Bchannel);
%imwrite(image1,'lab.jpg')
%imwrite(image2,'lab2rgb.jpg')
%image3 = Rgb2HSV(image2);
%imwrite(image3,'rgb2hsv.jpg');

%% figure(1);

% show the original (unaligned) color image +
% ... use the "imshow" command
% show the result after alignment
% ...
% show enhance the results of the enhancement phase
% ...
% save result image
%% imwrite(colorim,['result-' imname]);
