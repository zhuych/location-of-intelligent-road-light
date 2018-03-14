function snnew=mutation(snew,pmutation);        %新种群变异操作
global BitLength
snnew=snew;
pmm=IfCroIfMut(pmutation);
if pmm==1
    chb1=round(rand*(BitLength-1))+1;            %在[1,BitLength]范围内随机产生一个变异位
    snnew(chb1)=abs(snew(chb1)-1);
    chb2=round(rand*(BitLength-1))+1;
    snnew(chb2)=abs(snew(chb2)-1);
    chb3=round(rand*(BitLength-1))+1;
    snnew(chb3)=abs(snew(chb3)-1);
    chb4=round(rand*(BitLength-1))+1;
    snnew(chb4)=abs(snew(chb4)-1);
    chb5=round(rand*(BitLength-1))+1;
    snnew(chb5)=abs(snew(chb5)-1);
    chb6=round(rand*(BitLength-1))+1;
    snnew(chb6)=abs(snew(chb6)-1);
    chb7=round(rand*(BitLength-1))+1;
    snnew(chb7)=abs(snew(chb7)-1);
    chb8=round(rand*(BitLength-1))+1;
    snnew(chb8)=abs(snew(chb8)-1);
end