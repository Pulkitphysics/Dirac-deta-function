//dirac delta function evaluation by simpson rule.
//n should be even for simpson 1/3 rule.
disp("Delta Dirac Evaluation from Simpson 1/3 Rule")
funcprot(0)
function[delta]= integration(b,a,n)
    function[equation]= f(x)
        equation= (1/sqrt(2*(%pi)*(sigma^2)))*(%e)^((-(x-2)^2)/(2*(sigma^2)))*(x+3)
    endfunction
    sigma= input("enter the value of sigma=");
    h=(b-a)/n;
    sum_odd = 0;
    for i=1:2:n-1;
        sum_odd = sum_odd + f(a+i*h);
    end
    sum_even = 0;
    for j = 2:2:n-2;
        sum_even = sum_even +  f(a+i*h);
    end
    delta = (b-a)*(f(a) + 4*sum_odd + 2*sum_even + f(b))/(3*n)
 end
