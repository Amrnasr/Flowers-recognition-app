

clc; clear all; close all;

root='E:\HthmWork\Computer-Vision\Projects\Matlab-MachineLearning_Amr_17-02-20\Matlab-MachineLearning\Image Classification\102flowers';
sdirectory='E:\HthmWork\Computer-Vision\Projects\Matlab-MachineLearning_Amr_17-02-20\Matlab-MachineLearning\Image Classification\102flowers\1  pink primrose';
 jpegfiles=dir([sdirectory '/*.jpg']);
%  jpegfiles=dir(sdirectory '/*.jpg');
%jpegfiles=dir('*.jpg'); ----this for images in Matlab root directory



for k= 1:length(jpegfiles)
    
   % filename=jpegfiles(k).name;   %%%%%%%%%%This for images in Matlab root
   % directory
    
   
   filename=[sdirectory '/' jpegfiles(k).name];
    
    a=imread(filename);
    
   koko=sdirectory(:,size(root,2)+2:end)
    imshow(a);
end

