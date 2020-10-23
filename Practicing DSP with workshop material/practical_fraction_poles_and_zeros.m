% Program to find partial fraction expansion of system
% residuez--> Z-transform partial-fraction expansion.
% [R,P,K] = residuez(B,A)
% where B and A are the numerator and denominator polynomial coefficients,
% respectively, in ascending powers of z^(-1).
%It finds the residues, poles and direct terms of the
%partial-fraction expansion of B(z)/A(z),
%
% B(z) r(1) r(n)
% ---- = ------------ +... ------------ + k(1) + k(2)z^(-1) ...
% A(z) 1-p(1)z^(-1) 1-p(n)z^(-1)
%
% R and P are column vectors containing the residues and poles respectively.
%K contains the direct terms in a row vector.
%The number of poles is n = length(A)-1 = length(R) = length(P)
% The direct term coefficient vector is empty if length(B) < length(A)(proper fraction);
% otherwise,length(K) = length(B)-length(A)+1
% For Example
% Compute the partial fraction expansion of the following transfer
%H(z)=1/(1-Z^-1),num=[1], den=[1 -1]
% Similarly try function H(z) = (1 + 2z^-1) / (1 - z^-1 + 2z^-2).
 num = [1]; % Numerator coefficients
 den = [1 -1]; % Denominator coefficients
 [r,p k] = residuez(num,den) % H(z) = r(1)/(1-p(1)z^-1) +r(2)/(1- p(2)z^-1)+...
 zplane(num,den)%plots pole zero plot of TF