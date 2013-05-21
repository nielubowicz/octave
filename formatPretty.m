function n = formatPretty(number, dps)

n=cell(size(number));
for i=1:size(number)(1)
    for j=1:size(number)(2)
        divid=0;
        x=4;
        while (number(i,j)/(10^(3*x))<1 && x>-5)
            x=x-1;
            if x==0
                x=-1;
            end
        endwhile

        cn='';
        if (x>=4) cn='T';
            elseif (x>=3) cn='G';
            elseif (x>=2) cn='M';
            elseif (x>=1) cn='k';
            elseif (x<0 && x>=-1) cn='m';
            elseif (x<0 && x>=-2) cn='u';
            elseif (x<0 && x>=-3) cn='n';
        endif

        fmt=strcat('%.',num2str(dps));
        fmt=strcat(fmt,'f %c');

        n(i,j)=sprintf(fmt, number(i,j)/(10^(3*x)), cn);
    end
end

end
