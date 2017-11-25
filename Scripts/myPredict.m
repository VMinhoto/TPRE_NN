function [prediction]=myPredict(matrix,net,N)


[lines,colls]=size(matrix);


for i=1:lines
    if isnan(matrix(i,1))
     
        matrix(i,1) = net(transpose(linha));
        
    end
end
prediction=matrix(:,1);
end
