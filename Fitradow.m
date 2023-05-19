function res = Fitradow(X,option)
% if nargin ~= 2
%     filtrado = 'A';
%     disp('Advertencia: Son necesarios 2 argumentos.');
%     return;
% end
% 
% if ischar(Image_rgb)
%     X=imread(Image_rgb);
% else
%     X=Image_rgb;
% end
%filtrado=zeros(size(X));
%X = double(X);

At=Component_Transformation(X,'FI');
Awz=zeros(size(X));
Awz(:,:,1)=wavelift(At(:,:,1), 3, 'cdf97');
Awz(:,:,2)=wavelift(At(:,:,2), 3, 'cdf97');
Awz(:,:,3)=wavelift(At(:,:,3), 3, 'cdf97');

if strcmp(option, '122')
    Aw122=zeros(size(X));
    Aw122(:,:,1)=Awz(:,:,1);
    Aw122(:,1:end/2,2)=Awz(:,1:end/2,2);
    Aw122(:,1:end/2,3)=Awz(:,1:end/2,3);
elseif strcmp(option, '144')
    Aw122=zeros(size(X));
    Aw122(:,:,1)=Awz(:,:,1);
    Aw122(1:(end/2),1:(end/2),2)=Awz(1:(end/2),1:(end/2),2);
    Aw122(1:(end/2),1:(end/2),3)=Awz(1:(end/2),1:(end/2),3);
elseif strcmp(option, '124')
    Aw122=zeros(size(X));
    Aw122(:,:,1)=Awz(:,:,1);
    Aw122(:,1:end/2,2)=Awz(:,1:end/2,2);
    Aw122(1:end/2,1:end/2,3)=Awz(1:end/2,1:end/2,3);
elseif strcmp(option, '142')
    Aw122=zeros(size(X));
    Aw122(:,:,1)=Awz(:,:,1);
    Aw122(1:end/2,1:end/2,2)=Awz(1:end/2,1:end/2,2);
    Aw122(:,1:end/2,3)=Awz(:,1:end/2,3);
elseif strcmp(option, '11616')
    Aw122=zeros(size(X));
    Aw122(:,:,1)=Awz(:,:,1);
    Aw122(1:end/4,1:end/4,2)=Awz(1:end/4,1:end/4,2);
    Aw122(1:end/4,1:end/4,3)=Awz(1:end/4,1:end/4,3);
else
    fprintf('Advertencia: El argumento %s no esta soportada por Fitradow\n', option);
return
end

A122=zeros(size(X));
A122(:,:,1)=wavelift(Aw122(:,:,1), -3, 'cdf97');
A122(:,:,2)=wavelift(Aw122(:,:,2), -3, 'cdf97');
A122(:,:,3)=wavelift(Aw122(:,:,3), -3, 'cdf97');
A122rec=Component_Transformation(A122,'II');
res=uint8(A122rec);
figure;imshow(uint8(res));
end