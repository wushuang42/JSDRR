function K=hyperchaos(key_array,hw)


K=zeros(hw,6);
h=10; l=100; f=2.7; k=2; g=-3; m=1;
K(1,:)=key_array;

hh=0.005;
    for i=1:hw-1
        k1=h*(K(i,2)-K(i,1))+K(i,4);
        k2=h*(K(i,2)+hh/2*k1)-h*(K(i,1)+hh/2*k1)+K(i,4)+hh/2*k1;
        k3=h*(K(i,2)+hh/2*k2)-h*(K(i,1)+hh/2*k2)+K(i,4)+hh/2*k2;
        k4=h*(K(i,2)+hh*k3)-h*(K(i,1)+hh*k3)+K(i,4)+hh*k3;
        K(i+1,1)=K(i,1)+hh/6*(k1+2*k2+2*k3+k4);
        
        L1=-f*K(i,2)-K(i,1)*K(i,3)+K(i,6);
        L2=-f*(K(i,2)+hh/2*L1)-(K(i,1)+hh/2*L1)*(K(i,3)+hh/2*L1)+K(i,6)+hh/2*L1;
        L3=-f*(K(i,2)+hh/2*L2)-(K(i,1)+hh/2*L2)*(K(i,3)+hh/2*L2)+K(i,6)+hh/2*L2;
        L4=-f*(K(i,2)+hh*L3)-(K(i,1)+hh*L3)*(K(i,3)+hh*L3)+K(i,6)+hh*L3;
        K(i+1,2)=K(i,2)+hh/6*(L1+2*L2+2*L3+L4);
        
        M1=-l+K(i,1)*K(i,2);
        M2=-l+(K(i,1)+hh/2*M1)*(K(i,2)+hh/2*M1);
        M3=-l+(K(i,1)+hh/2*M2)*(K(i,2)+hh/2*M2);
        M4=-l+(K(i,1)+hh*M3)*(K(i,2)+hh*M3);
        K(i+1,3)=K(i,3)+hh/6*(M1+2*M2+2*M3+M4);
        
        N1=-K(i,2)-K(i,5);
        N2=-(K(i,2)+hh/2*N1)-(K(i,5)+hh/2*N1);
        N3=-(K(i,2)+hh/2*N2)-(K(i,5)+hh/2*N2);
        N4=-(K(i,2)+hh*N3)-(K(i,5)+hh*N3);
        K(i+1,4)=K(i,4)+hh/6*(N1+2*N2+2*N3+N4);
        
        F1=k*K(i,2)+K(i,4);
        F2=k*(K(i,2)+hh/2*F1)+K(i,4)+hh/2*F1;
        F3=k*(K(i,2)+hh/2*F2)+K(i,4)+hh/2*F2;
        F4=k*(K(i,2)+hh*F3)+K(i,4)+hh*F3;
        K(i+1,5)=K(i,5)+hh/6*(F1+2*F2+2*F3+F4);
        
        T1=g*K(i,1)+m*K(i,2);
        T2=g*(K(i,1)+hh/2*T1)+m*(K(i,2)+hh/2*T1);
        T3=g*(K(i,1)+hh/2*T2)+m*(K(i,2)+hh/2*T2);
        T4=g*(K(i,1)+hh*T3)+m*(K(i,2)+hh*T3);
        K(i+1,6)=K(i,6)+hh/6*(T1+2*T2+2*T3+T4);
        
    end


    
    
