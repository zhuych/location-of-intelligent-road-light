function scro=crossover(population,seln,pc);            %����Ⱥ�������
global bitLength
pcc=IfCroIfMut(pc);
if pcc==1
    chb=round(rand*(bitLength-2))+1;                    %��[1,bitLength-1]��Χ���������һ������λ
    scro(1,:)=[population(seln(1),1:chb) population(seln(2),chb+1:bitLength)];
    scro(2,:)=[population(seln(2),1:chb) population(seln(1),chb+1:bitLength)];
else
    scro(1,:)=population(seln(1),:);
    scro(2,:)=population(seln(2),:);
end
        