%Display digit image
%Input - x should be a row vector with either 28x28 entries or 28x28+1
%entries, where in the last case the first entry is the label of the
%example.
function showdigit(x)
y=-1;
if length(x)==785
    y=x(1);
    x=x(2:785);
end
tmp=zeros(28,28);
tmp(:)=x;
image(tmp');colormap(gray(256));axis('image');
if y~=-1
    title(['True label is ' num2str(y)]);
else
    title('True label is unknown');
end;
