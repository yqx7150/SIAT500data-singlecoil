clear all
close all

images = zeros(256,256,500);
 for ii =1:500
     load(['./yqx500/',num2str(ii),'.mat']); 
     figure(666);imshow(abs(Img),[]); 
     images(:,:,ii) = Img./max(abs(Img(:)));
  end

train_data_480_500 = images(:,:,1:480);
val_data_20_500 = images(:,:,481:500);
save train_data_480_500 train_data_480_500
save val_data_20_500  val_data_20_500

