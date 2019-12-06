function [P2]=pr2(p)
    pm=50;
    mu=5;
    N1=60;
    N2=70;
    D1=40;
    D2=25;
    D3=5;
    q1=45;
    q2=50;
    q0=1;
    Df1=100;
    Df2=100;
    delta=6;
    
    DD2= (d21(p,D1, delta)+d22(p,D2, delta)+d23(p,D3));
    P2= (min((q2-N2)*(pm-mu)/(q0-q2)+(pm-mu)*DD2/Df2 +mu,pm)*(N2-q2));   
end
