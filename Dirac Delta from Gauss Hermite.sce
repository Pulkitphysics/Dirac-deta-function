 //Gauss Hermite Quadrature
 clc 
clear
n = input("enter the degree of polynomial: ")
sigma = 1
x = poly(0,"x")
function H1 = H(n)
    H1 = 0
    for k=0:floor(n/2)
        S = ((-1)^k)*factorial(n)*((2*x)^(n-(2*k)))/(factorial(k)*factorial(n-(2*k)))
        H1 = H1 + S
    end
endfunction
R = roots(H(n))
Z1 = ((2)^(n-1))* factorial(n) * sqrt(%pi)
Z2 = (n^2)*(horner(H(n-1),R).^2)
Z=Z1./Z2
f = ((R.*(sqrt(2) * sigma)) + 5)/(sqrt(%pi))
for i=1:3
    disp("For sigma = "+string(sigma)+" the integral is "+string(sum(Z.*f)))
    sigma =sigma/10
end
