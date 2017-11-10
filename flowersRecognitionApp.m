

clc;clear all; close all;

load flower102BagofWordsClassifier.mat;

h = msgbox('Open a flower image for program to classify'); 

disp('Press any key');
pause(10);
[f,p] = uigetfile({'*.png;*.jpg;*.bmp;*.tif','Supported images';...
                 '*.png','Portable Network Graphics (*.png)';...
                 '*.jpg','J-PEG (*.jpg)';...
                 '*.bmp','Bitmap (*.bmp)';...
                 '*.tif','Tagged Image File (*.tif,)';...
                 '*.*','All files (*.*)'});
x = imread([p f]);
himage=imshow(x);
title(f)
img=x;

% Try the Newly Trained Classifier on Test Images
% You can now apply the newly trained classifier to categorize new images.

% img = imread(fullfile(rootFolder, '1  pink primrose', 'image_0690.jpg'));
[labelIdx, scores] = predict(categoryClassifier, img);

% Display the string label
categoryClassifier.Labels(labelIdx)
