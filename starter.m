% BBM 413 - Fundamentals of Image Processing, Fall 2013
% Programming Assignment 1, starter Matlab code
% Adapted from the code provided by Alexei A. Efros
% 21.02.2012 (Erkut Erdem)


% name of the input file
imname = '00056v.jpg';

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

% Align the images
%%%%%aG = align(G,B);
%%%%%aR = align(R,B);

% Enhance the aligned image
% ...

% open figure
%% figure(1);

% show the original (unaligned) color image
% ... use the "imshow" command
% show the result after alignment
% ...
% show enhance the results of the enhancement phase
% ...
% save result image
%% imwrite(colorim,['result-' imname]);
