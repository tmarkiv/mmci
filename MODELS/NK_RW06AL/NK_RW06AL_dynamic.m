function [residual, g1, g2, g3] = NK_RW06AL_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(11, 1);
lhs =y(10);
rhs =y(9)*4;
residual(1)= lhs-rhs;
lhs =y(14);
rhs =y(2);
residual(2)= lhs-rhs;
lhs =y(15);
rhs =y(4);
residual(3)= lhs-rhs;
lhs =y(16);
rhs =y(14)+y(15);
residual(4)= lhs-rhs;
lhs =y(11);
rhs =y(17);
residual(5)= lhs-rhs;
lhs =y(12);
rhs =4*y(8);
residual(6)= lhs-rhs;
lhs =y(13);
rhs =y(7);
residual(7)= lhs-rhs;
lhs =y(17);
rhs =0.25*(y(2)+y(12)+y(6));
residual(8)= lhs-rhs;
lhs =y(10);
rhs =params(1)*y(1)+y(12)*params(5)+y(2)*params(6)+y(4)*params(7)+params(8)*y(5)+params(10)*y(20)+y(13)*params(14)+params(15)*y(3)+params(32)*x(it_, 2);
residual(9)= lhs-rhs;
lhs =y(7);
rhs =y(18)-1/params(35)*(y(9)-y(19))+x(it_, 1);
residual(10)= lhs-rhs;
lhs =y(8);
rhs =y(19)*params(37)+y(7)*params(39)*(params(35)+params(36))+y(9)*params(39);
residual(11)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(11, 22);

  %
  % Jacobian matrix
  %

  g1(1,9)=(-4);
  g1(1,10)=1;
  g1(2,2)=(-1);
  g1(2,14)=1;
  g1(3,4)=(-1);
  g1(3,15)=1;
  g1(4,14)=(-1);
  g1(4,15)=(-1);
  g1(4,16)=1;
  g1(5,11)=1;
  g1(5,17)=(-1);
  g1(6,8)=(-4);
  g1(6,12)=1;
  g1(7,7)=(-1);
  g1(7,13)=1;
  g1(8,2)=(-0.25);
  g1(8,12)=(-0.25);
  g1(8,6)=(-0.25);
  g1(8,17)=1;
  g1(9,1)=(-params(1));
  g1(9,10)=1;
  g1(9,2)=(-params(6));
  g1(9,12)=(-params(5));
  g1(9,20)=(-params(10));
  g1(9,3)=(-params(15));
  g1(9,13)=(-params(14));
  g1(9,4)=(-params(7));
  g1(9,5)=(-params(8));
  g1(9,22)=(-params(32));
  g1(10,7)=1;
  g1(10,18)=(-1);
  g1(10,19)=(-(1/params(35)));
  g1(10,9)=1/params(35);
  g1(10,21)=(-1);
  g1(11,7)=(-(params(39)*(params(35)+params(36))));
  g1(11,8)=1;
  g1(11,19)=(-params(37));
  g1(11,9)=(-params(39));
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],11,484);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],11,10648);
end
end
