function [residual, g1, g2, g3] = NK_LWW03AL_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(14, 1);
lhs =y(16);
rhs =y(11);
residual(1)= lhs-rhs;
lhs =y(17);
rhs =y(15);
residual(2)= lhs-rhs;
lhs =y(18);
rhs =y(10);
residual(3)= lhs-rhs;
lhs =y(20);
rhs =y(5);
residual(4)= lhs-rhs;
lhs =y(21);
rhs =y(7);
residual(5)= lhs-rhs;
lhs =y(22);
rhs =y(20)+y(21);
residual(6)= lhs-rhs;
lhs =y(19);
rhs =y(9);
residual(7)= lhs-rhs;
lhs =y(15);
rhs =0.25*(y(21)+y(18)+y(20)+y(8));
residual(8)= lhs-rhs;
lhs =y(16);
rhs =params(1)*y(4)+y(18)*params(5)+y(5)*params(6)+y(7)*params(7)+y(8)*params(8)+params(10)*y(25)+y(19)*params(14)+params(15)*y(6)+params(32)*x(it_, 3);
residual(9)= lhs-rhs;
lhs =y(9);
rhs =y(23)-0.25*params(36)*(y(11)-y(24)-y(12));
residual(10)= lhs-rhs;
lhs =y(10);
rhs =y(24)*params(35)+y(9)*4*params(37)+y(14);
residual(11)= lhs-rhs;
lhs =y(13);
rhs =y(11)-y(1);
residual(12)= lhs-rhs;
lhs =y(12);
rhs =params(39)*y(2)+x(it_, 1);
residual(13)= lhs-rhs;
lhs =y(14);
rhs =params(40)*y(3)+x(it_, 2);
residual(14)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(14, 28);

  %
  % Jacobian matrix
  %

  g1(1,11)=(-1);
  g1(1,16)=1;
  g1(2,15)=(-1);
  g1(2,17)=1;
  g1(3,10)=(-1);
  g1(3,18)=1;
  g1(4,5)=(-1);
  g1(4,20)=1;
  g1(5,7)=(-1);
  g1(5,21)=1;
  g1(6,20)=(-1);
  g1(6,21)=(-1);
  g1(6,22)=1;
  g1(7,9)=(-1);
  g1(7,19)=1;
  g1(8,15)=1;
  g1(8,18)=(-0.25);
  g1(8,20)=(-0.25);
  g1(8,8)=(-0.25);
  g1(8,21)=(-0.25);
  g1(9,4)=(-params(1));
  g1(9,16)=1;
  g1(9,5)=(-params(6));
  g1(9,18)=(-params(5));
  g1(9,25)=(-params(10));
  g1(9,6)=(-params(15));
  g1(9,19)=(-params(14));
  g1(9,7)=(-params(7));
  g1(9,8)=(-params(8));
  g1(9,28)=(-params(32));
  g1(10,9)=1;
  g1(10,23)=(-1);
  g1(10,24)=(-(0.25*params(36)));
  g1(10,11)=0.25*params(36);
  g1(10,12)=(-(0.25*params(36)));
  g1(11,9)=(-(4*params(37)));
  g1(11,10)=1;
  g1(11,24)=(-params(35));
  g1(11,14)=(-1);
  g1(12,1)=1;
  g1(12,11)=(-1);
  g1(12,13)=1;
  g1(13,2)=(-params(39));
  g1(13,12)=1;
  g1(13,26)=(-1);
  g1(14,3)=(-params(40));
  g1(14,14)=1;
  g1(14,27)=(-1);
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],14,784);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],14,21952);
end
end
