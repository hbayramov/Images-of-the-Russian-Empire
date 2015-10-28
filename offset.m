function [output] = offset(img1,img2)

min = inf;
for x = -10:10
    for y = -10:10
        tmp = circshift(img1,[x y]);
        ssd = sum(sum(img2-tmp).^2);
        if ssd < min
            min = ssd;
            output = [x y];
        end
    end
end
    
end
