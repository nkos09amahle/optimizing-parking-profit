function [Dd2]=d22(p,D2, delta)
    if p(2)<p(1)
        Dd2=D2;
    elseif p(2) >= p(1) && p(2) <=p(1)+delta 
        Dd2=D2*(p(1)-p(2)+delta)/delta;
    else p(1)+delta<p(2);
        Dd2=0;
    end
end
