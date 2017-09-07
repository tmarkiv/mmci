function [residual, g1, g2] = NK_LWW03AL_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 14, 1);

%
% Model equations
%

lhs =y(8);
rhs =y(3);
residual(1)= lhs-rhs;
lhs =y(9);
rhs =y(7);
residual(2)= lhs-rhs;
lhs =y(10);
rhs =y(2);
residual(3)= lhs-rhs;
lhs =y(12);
rhs =y(10);
residual(4)= lhs-rhs;
lhs =y(13);
rhs =y(12);
residual(5)= lhs-rhs;
lhs =y(14);
rhs =y(12)+y(13);
residual(6)= lhs-rhs;
lhs =y(11);
rhs =y(1);
residual(7)= lhs-rhs;
lhs =y(7);
rhs =0.25*(y(13)+y(13)+y(10)+y(12));
residual(8)= lhs-rhs;
lhs =y(8);
rhs =y(8)*params(1)+y(10)*params(5)+y(10)*params(6)+y(12)*params(7)+y(13)*params(8)+y(10)*params(10)+y(11)*params(14)+y(11)*params(15)+params(32)*x(3);
residual(9)= lhs-rhs;
lhs =y(1);
rhs =y(1)-0.25*params(36)*(y(3)-y(2)-y(4));
residual(10)= lhs-rhs;
lhs =y(2);
rhs =y(2)*params(35)+y(1)*4*params(37)+y(6);
residual(11)= lhs-rhs;
residual(12) = y(5);
lhs =y(4);
rhs =y(4)*params(39)+x(1);
residual(13)= lhs-rhs;
lhs =y(6);
rhs =y(6)*params(40)+x(2);
residual(14)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(14, 14);

  %
  % Jacobian matrix
  %

  g1(1,3)=(-1);
  g1(1,8)=1;
  g1(2,7)=(-1);
  g1(2,9)=1;
  g1(3,2)=(-1);
  g1(3,10)=1;
  g1(4,10)=(-1);
  g1(4,12)=1;
  g1(5,12)=(-1);
  g1(5,13)=1;
  g1(6,12)=(-1);
  g1(6,13)=(-1);
  g1(6,14)=1;
  g1(7,1)=(-1);
  g1(7,11)=1;
  g1(8,7)=1;
  g1(8,10)=(-0.25);
  g1(8,12)=(-0.25);
  g1(8,13)=(-0.5);
  g1(9,8)=1-params(1);
  g1(9,10)=(-(params(10)+params(5)+params(6)));
  g1(9,11)=(-(params(14)+params(15)));
  g1(9,12)=(-params(7));
  g1(9,13)=(-params(8));
  g1(10,2)=(-(0.25*params(36)));
  g1(10,3)=0.25*params(36);
  g1(10,4)=(-(0.25*params(36)));
  g1(11,1)=(-(4*params(37)));
  g1(11,2)=1-params(35);
  g1(11,6)=(-1);
  g1(12,5)=1;
  g1(13,4)=1-params(39);
  g1(14,6)=1-params(40);
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],14,196);
end
end
