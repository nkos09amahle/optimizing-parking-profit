function [P1]=pr1(p)
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
    
    DD1=(d11(p,D1, delta)+d12(p,D2, delta)+d13(p,D3));     
    P1=(min((q1-N1)*(pm-mu)/(q0-q1)+(pm-mu)*DD1/Df1 +mu,pm))*(N1-q1);   
end
