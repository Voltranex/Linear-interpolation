clear %-V-%
clc
yyzz = pwd;
yyzz1 = string(yyzz);
ZZZ =importdata('V.mat');
ZZZ1=importdata('V1.mat');
ZZZ2=importdata('V2.mat');
if ZZZ1 == "air" || ZZZ1 == "water"
    fprintf('Last calculation time : %.30s \nLast calculation was %.9s at %.4f(K) %.4f(C) \n',ZZZ2,ZZZ1,ZZZ,ZZZ-273);
else
    fprintf('Last calculation time : %.30s \nLast calculation was %.9s at value of %.4f \n',ZZZ2,ZZZ1,ZZZ);
    
end    
fff=input('Waterair(d) or else(e) = ','s');
switch fff
    case ('d');
        newStr = replace(yyzz1,"Linear","Linear\lul.xlsx");
    case ('e');
        fff1=input('file name ? ','s');
        yyy23=strcat(yyzz1,"\");
        yyy24=strcat(fff1,".xlsx");
        newStr = strcat(yyy23,yyy24);
end 
clc
A = readtable(newStr);
A1=A{:,:};
yl2=width(A);
clc
CC = datetime ;
clc
switch fff
    case ('d');
        inf=input('Properties of Water or air ? = ','s');
        save V1.mat inf
                XZ=input('Kelvin(K) Or Celcius(C) ? = ','s');
          if XZ == ('K') | XZ == ('k');
            TT=('Temperature Kelvin');
          else
             TT=('Temperature Celcius');
          end
          fprintf('%s ',TT);
          T=input('= ');
          if XZ == ('K')| XZ == ('k');
    T=T;
else
    T=T+273;
end
clc
        switch inf
    case ('air');
        x=1;
    case ('water');
        x=37;
        end
    case ('e');
        x=1;
end
clc
switch fff
    case ('d');
        switch inf
    case ('air');
        if T <100 | T>2500
            fprintf('Values must be greater than 100(K)and lower than 2500(K)\n');
        end
    case ('water');
        if T<273 | T>588.6
            fprintf('Values must be greater than 273(K)and lower than 588.6(K)\n')
        end
        end
end
switch fff
    case ('e');
        T=input('Value to be calculated ? =');
        save V1.mat fff1
        save V.mat T
        save V2.mat CC
        while 1
    if A1(x,1)<= T & T <= A1(x+1,1);
        if yl2 == 2;
            tyy1=A1(x,2)+((T-A1(x,1))*(A1(x+1,2)-A1(x,2))/(A1(x+1,1)-A1(x,1)));
            lol22=A.Properties.VariableNames(2);
            lol23=lol22{:,:};
            fprintf('%.10s is %.4f  \n',lol23,tyy1);
        elseif yl2 == 3;
            tyy1=A1(x,2)+((T-A1(x,1))*(A1(x+1,2)-A1(x,2))/(A1(x+1,1)-A1(x,1)));
            tyy2=A1(x,3)+((T-A1(x,1))*(A1(x+1,3)-A1(x,3))/(A1(x+1,1)-A1(x,1)));
            lol22=A.Properties.VariableNames(2);
            lol23=lol22{:,:};
            lol24=A.Properties.VariableNames(3);
            lol25=lol24{:,:};
            fprintf('%.10s is %.4f  \n',lol23,tyy1);
            fprintf('%.10s is %.4f  \n',lol25,tyy2);
        elseif yl2 == 4;
            tyy1=A1(x,2)+((T-A1(x,1))*(A1(x+1,2)-A1(x,2))/(A1(x+1,1)-A1(x,1)));
            tyy2=A1(x,3)+((T-A1(x,1))*(A1(x+1,3)-A1(x,3))/(A1(x+1,1)-A1(x,1)));
            tyy3=A1(x,4)+((T-A1(x,1))*(A1(x+1,4)-A1(x,4))/(A1(x+1,1)-A1(x,1)));
            lol22=A.Properties.VariableNames(2);
            lol23=lol22{:,:};
            lol24=A.Properties.VariableNames(3);
            lol25=lol24{:,:};
            lol26=A.Properties.VariableNames(4);
            lol27=lol26{:,:};
            fprintf('%.10s is %.4f  \n',lol23,tyy1);
            fprintf('%.10s is %.4f  \n',lol25,tyy2);
            fprintf('%.10s is %.4f  \n',lol27,tyy3);

        elseif yl2 == 5;
            tyy1=A1(x,2)+((T-A1(x,1))*(A1(x+1,2)-A1(x,2))/(A1(x+1,1)-A1(x,1)));
            tyy2=A1(x,3)+((T-A1(x,1))*(A1(x+1,3)-A1(x,3))/(A1(x+1,1)-A1(x,1)));
            tyy3=A1(x,4)+((T-A1(x,1))*(A1(x+1,4)-A1(x,4))/(A1(x+1,1)-A1(x,1)));
            tyy4=A1(x,5)+((T-A1(x,1))*(A1(x+1,5)-A1(x,5))/(A1(x+1,1)-A1(x,1)));
            lol22=A.Properties.VariableNames(2);
            lol23=lol22{:,:};
            lol24=A.Properties.VariableNames(3);
            lol25=lol24{:,:};
            lol26=A.Properties.VariableNames(4);
            lol27=lol26{:,:};
            lol28=A.Properties.VariableNames(5);
            lol29=lol28{:,:};
            fprintf('%.10s is %.4f  \n',lol23,tyy1);
            fprintf('%.10s is %.4f  \n',lol25,tyy2);
            fprintf('%.10s is %.4f  \n',lol27,tyy3);
            fprintf('%.10s is %.4f  \n',lol29,tyy4);
        else
            tyy1=A1(x,2)+((T-A1(x,1))*(A1(x+1,2)-A1(x,2))/(A1(x+1,1)-A1(x,1)));
            tyy2=A1(x,3)+((T-A1(x,1))*(A1(x+1,3)-A1(x,3))/(A1(x+1,1)-A1(x,1)));
            tyy3=A1(x,4)+((T-A1(x,1))*(A1(x+1,4)-A1(x,4))/(A1(x+1,1)-A1(x,1)));
            tyy4=A1(x,5)+((T-A1(x,1))*(A1(x+1,5)-A1(x,5))/(A1(x+1,1)-A1(x,1)));
            tyy5=A1(x,6)+((T-A1(x,1))*(A1(x+1,6)-A1(x,6))/(A1(x+1,1)-A1(x,1)));
            lol22=A.Properties.VariableNames(2);
            lol23=lol22{:,:};
            lol24=A.Properties.VariableNames(3);
            lol25=lol24{:,:};
            lol26=A.Properties.VariableNames(4);
            lol27=lol26{:,:};
            lol28=A.Properties.VariableNames(5);
            lol29=lol28{:,:};
            lol30=A.Properties.VariableNames(6);
            lol31=lol30{:,:};
            fprintf('%.10s is %.4f  \n',lol23,tyy1);
            fprintf('%.10s is %.4f  \n',lol25,tyy2);
            fprintf('%.10s is %.4f  \n',lol27,tyy3);
            fprintf('%.10s is %.4f  \n',lol29,tyy4);
            fprintf('%.10s is %.4f  \n',lol31,tyy5);
        end
        break
    end                         
    x=x+1;
        end
end
switch fff
    case ('d');
        while 1
    if A1(x,1)<= T & T <= A1(x+1,1);
        Density=A1(x,2)+((T-A1(x,1))*(A1(x+1,2)-A1(x,2))/(A1(x+1,1)-A1(x,1)));
        Cp=A1(x,3)+((T-A1(x,1))*(A1(x+1,3)-A1(x,3))/(A1(x+1,1)-A1(x,1)));
        Viscosity=A1(x,4)+((T-A1(x,1))*(A1(x+1,4)-A1(x,4))/(A1(x+1,1)-A1(x,1)));
        KTerm=A1(x,5)+((T-A1(x,1))*(A1(x+1,5)-A1(x,5))/(A1(x+1,1)-A1(x,1)));
        Pr=A1(x,6)+((T-A1(x,1))*(A1(x+1,6)-A1(x,6))/(A1(x+1,1)-A1(x,1)));
        switch inf
            case ('water');
                GrxPr=A1(x,7)+((T-A1(x,1))*(A1(x+1,7)-A1(x,7))/(A1(x+1,1)-A1(x,1)));
        end               
                
        break
    end
    x=x+1;
        end
end
format long
switch inf
    case ('water');
        fprintf('Values of water at %.4f Kelvin %.4f Celcius from [natl. bur. stand 564 1955] \n',T,T-273);
        fprintf('Viscosity %.4f Kg/m.s \n',Viscosity);
        fprintf('Grpr %5.4e(x^3*DT must be added) \n',GrxPr);
    case ('air');
        fprintf('Values of air at %.4f Kelvin %.4f Celcius from [natl. bur. stand 564 1955] \n',T,T-273);
        fprintf('Viscosity %.4f Kg/m.s \n',Viscosity);
end
switch fff
        case ('d');
            fprintf('Pr %.4f \n',Pr);
            fprintf('Density %.4f kg/m3 \n',Density);
            fprintf('Cp %.4fx10^3 j/kg.C \n',Cp);
            fprintf('K %.4f W/m.C \n',KTerm);
end

