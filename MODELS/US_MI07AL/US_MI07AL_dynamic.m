function [residual, g1, g2, g3] = US_MI07AL_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(14, 1);
T87 = ((1-params(35)*params(40))*params(36))^(-1);
lhs =y(17);
rhs =y(10)*4;
residual(1)= lhs-rhs;
lhs =y(21);
rhs =y(6);
residual(2)= lhs-rhs;
lhs =y(22);
rhs =y(8);
residual(3)= lhs-rhs;
lhs =y(23);
rhs =y(21)+y(22);
residual(4)= lhs-rhs;
lhs =y(19);
rhs =4*y(11);
residual(5)= lhs-rhs;
lhs =y(20);
rhs =y(13);
residual(6)= lhs-rhs;
lhs =y(18);
rhs =0.25*(y(22)+y(21)+y(19)+y(9));
residual(7)= lhs-rhs;
lhs =y(17);
rhs =params(1)*y(5)+y(19)*params(5)+y(6)*params(6)+y(8)*params(7)+y(9)*params(8)+params(10)*y(28)+y(20)*params(14)+params(15)*y(7)+params(32)*x(it_, 3);
residual(8)= lhs-rhs;
lhs =y(14);
rhs =y(27)-(1-params(35)*params(40))*params(36)*(y(10)-y(24)-y(15));
residual(9)= lhs-rhs;
lhs =y(12);
rhs =params(38)*(y(13)*params(39)+y(14)*T87)+params(35)*y(25)+y(16);
residual(10)= lhs-rhs;
lhs =y(12);
rhs =y(11)-params(37)*y(1);
residual(11)= lhs-rhs;
lhs =y(14);
rhs =y(13)-params(40)*y(2)-params(35)*params(40)*(y(26)-y(13)*params(40));
residual(12)= lhs-rhs;
lhs =y(15);
rhs =params(41)*y(3)+x(it_, 1);
residual(13)= lhs-rhs;
lhs =y(16);
rhs =params(42)*y(4)+x(it_, 2);
residual(14)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(14, 31);

  %
  % Jacobian matrix
  %

  g1(1,10)=(-4);
  g1(1,17)=1;
  g1(2,6)=(-1);
  g1(2,21)=1;
  g1(3,8)=(-1);
  g1(3,22)=1;
  g1(4,21)=(-1);
  g1(4,22)=(-1);
  g1(4,23)=1;
  g1(5,11)=(-4);
  g1(5,19)=1;
  g1(6,13)=(-1);
  g1(6,20)=1;
  g1(7,18)=1;
  g1(7,19)=(-0.25);
  g1(7,21)=(-0.25);
  g1(7,9)=(-0.25);
  g1(7,22)=(-0.25);
  g1(8,5)=(-params(1));
  g1(8,17)=1;
  g1(8,6)=(-params(6));
  g1(8,19)=(-params(5));
  g1(8,28)=(-params(10));
  g1(8,7)=(-params(15));
  g1(8,20)=(-params(14));
  g1(8,8)=(-params(7));
  g1(8,9)=(-params(8));
  g1(8,31)=(-params(32));
  g1(9,10)=(1-params(35)*params(40))*params(36);
  g1(9,24)=(-((1-params(35)*params(40))*params(36)));
  g1(9,14)=1;
  g1(9,27)=(-1);
  g1(9,15)=(-((1-params(35)*params(40))*params(36)));
  g1(10,12)=1;
  g1(10,25)=(-params(35));
  g1(10,13)=(-(params(38)*params(39)));
  g1(10,14)=(-(params(38)*T87));
  g1(10,16)=(-1);
  g1(11,1)=params(37);
  g1(11,11)=(-1);
  g1(11,12)=1;
  g1(12,2)=params(40);
  g1(12,13)=(-(1-params(35)*params(40)*(-params(40))));
  g1(12,26)=params(35)*params(40);
  g1(12,14)=1;
  g1(13,3)=(-params(41));
  g1(13,15)=1;
  g1(13,29)=(-1);
  g1(14,4)=(-params(42));
  g1(14,16)=1;
  g1(14,30)=(-1);

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],14,961);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],14,29791);
end
end
end
end
