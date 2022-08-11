clear all
close all

% images = zeros(256,256,500);
%  for ii =1:500
%      load(['./SIAT_MRI500singlecoil/',num2str(ii),'.mat']); 
%      figure(666);imshow(abs(Img),[]); 
%      images(:,:,ii) = Img./max(abs(Img(:)));
%   end
% 
% train_data_480_500 = images(:,:,1:480);
% val_data_20_500 = images(:,:,481:500);
% save train_data_480_500 train_data_480_500
% save val_data_20_500  val_data_20_500

images = zeros(256*10,256*10,100);
 for i1 =1:10
     for i2 =1:10
         ii = 10*(i1-1)+ i2
     load(['./SIAT_MRI500singlecoil/',num2str(ii),'.mat']);      
     allimages(256*(i1-1)+1:256*(i1-1)+256,256*(i2-1)+1:256*(i2-1)+256) = Img./max(abs(Img(:)));
     end
  end
figure(6666);imshow(abs(allimages),[]); 
