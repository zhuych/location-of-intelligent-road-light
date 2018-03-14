clear;clc;
global bitLength
bitLength=87;  
global popsize
popsize=500; 
Generationmax=300;
pcrossover=0.6;       %�������
pmutation=0.05;      %�������
population=fix(rand(popsize,bitLength)*2);
Generation=1;
while Generation<Generationmax+1
    for i=1:popsize
        fitness(i)=messages(population(i,:));     %������Ӧ��
    end
    [sorted_f,sorted_id]=sort(fitness,'descend');
    population=population(sorted_id(1:popsize),:);   %����Ⱥ������Ӧ���ɸߵ�������
    fsum=sum(sorted_f(1:popsize));           
    Pperpopulation=sorted_f(1:popsize)/fsum;      %������Ӧ�ȷ����Ŵ�����   
    cumsump(1)=Pperpopulation(1);
    for i=2:popsize
        cumsump(i)=cumsump(i-1)+Pperpopulation(i);   %�����ۻ�����
    end
    %cumsump=cumsump';
    for j=1:2:popsize
        seln=selection(population,cumsump);                     %ѡ�����            
        scro=crossover(population,seln,pcrossover);             %�������
        scnew(j,:)=scro(1,:);
        scnew(j+1,:)=scro(2,:);
        smnew(j,:)=mutation(scnew(j,:),pmutation);
        smnew(j+1,:)=mutation(scnew(j+1,:),pmutation);          %�������
    end
    for i=1:popsize
        fitnessnew(i)=messages(smnew(i,:));     %��������Ⱥ��Ӧ��
    end
    [sorted_fnew,sorted_idnew]=sort(fitnessnew,'descend');
    smnew=smnew(sorted_idnew(1:popsize),:);
    population1=smnew;
    if (sorted_f(1)>sorted_fnew(1))
       aim=sorted_f(1);
       seq=population(1,:);
       population1(popsize,:)=population(1,:);
    else
       aim=sorted_fnew(1);
       seq=smnew(1,:);
    end
    population=population1;
    Generation=Generation+1;
    aim
end