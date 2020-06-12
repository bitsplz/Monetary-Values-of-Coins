function [ amount ] = coinValues( image )
one=0;
five=0;
ten=0;
image=rgb2gray(image);
[centre,radius] = imfindcircles(image,[30 120],'ObjectPolarity','dark','Sensitivity',0.9);
figure('Name','Monetary Value of Coins');
imshow(image);
for i=1:length(radius)
    if radius(i) > 57
        ten = ten + 1;
    elseif radius(i) > 45
        one = one + 1;
    elseif radius(i) > 40
        five = five + 1;
    end
end
viscircles(centre,radius);
amount= one*1 + five*5 + ten*10;
title(['Coins value= ', num2str(amount), ' | 1x',num2str(one),' 5x',num2str(five), ' 10x',num2str(ten)]);
end

