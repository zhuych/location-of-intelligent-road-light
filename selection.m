function seln=selection(population,cumsump);  %����Ⱥѡ���������������ѡ��
%����Ⱥ��ѡ����������
for i=1:2
    r=rand;                                   %����һ�������
    prand=cumsump-r;
    j=1;
    while prand(j)<0
        j=j+1;
    end
    seln(i)=j;                                %ѡ�и�������
end