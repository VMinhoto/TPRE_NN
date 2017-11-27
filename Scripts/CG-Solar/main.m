
%importData;

solarOne = makeFeature(CG_Solar, 1);

N=5;

matrixFull = makeMatrix(CG_Solar, Irradiance, Hour, Month, Temp, ...
    solarOne);

matrix=removeGaps(matrixFull);

input=matrix(:,2:size(matrix,2));

target=matrix(:,1);

train;

myPredict(matrixFull,net,7);

