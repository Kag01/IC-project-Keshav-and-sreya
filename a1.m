% finding the ascii value of the char entered and then increamenting the
% respective index in th storasge array. then using all the values, find
% the probability distribution and make a hamming code for it. total
% charcters:
% a 128X128 matrix which have 1 where the column no has the row no as its
% children or is itsel. all M[i,i]=1 initially.

fi=fopen("File__3.txt",'r');

a=fscanf(fi,"%c");

asc=double(a);

storage=zeros(1,128);

for z=1:length(asc)
    storage(asc(z)+1)=storage(asc(z)+1)+1;
end

total_char=sum(storage);
pd=storage./total_char;

length=zeros(1,128);
