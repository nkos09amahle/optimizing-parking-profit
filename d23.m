function [Dd2]=d23(p,D3)
    if p(2)<p(1)-1
        Dd2=D3;
    elseif p(2) >= p(1)-1 && p(2) <=p(1)+1 
        Dd2=D3*(p(1)-p(2)+1)/2;
    else p(1)+1<p(2);
        Dd2=0;
    end
end
