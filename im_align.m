
function [output] = im_align(img1,img2)

img_offset = offset(img1,img2);
output = circshift(img1,img_offset);
end
