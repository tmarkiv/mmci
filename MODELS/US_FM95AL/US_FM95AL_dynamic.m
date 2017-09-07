function [residual, g1, g2, g3] = US_FM95AL_dynamic(y, x, params, steady_state, it_)
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

residual = zeros(25, 1);
lhs =y(23);
rhs =y(20)+params(41)/params(44);
residual(1)= lhs-rhs;
lhs =y(24);
rhs =0.25*(y(25)+y(26)+y(27)+y(8));
residual(2)= lhs-rhs;
lhs =y(25);
rhs =y(21);
residual(3)= lhs-rhs;
lhs =y(26);
rhs =y(6);
residual(4)= lhs-rhs;
lhs =y(27);
rhs =y(7);
residual(5)= lhs-rhs;
lhs =y(28);
rhs =y(26)+y(27);
residual(6)= lhs-rhs;
lhs =y(29);
rhs =y(18);
residual(7)= lhs-rhs;
lhs =y(30);
rhs =y(18);
residual(8)= lhs-rhs;
lhs =y(23);
rhs =params(1)*y(5)+y(25)*params(5)+y(6)*params(6)+y(7)*params(7)+y(8)*params(8)+params(10)*y(45)+y(29)*params(14)+params(15)*y(9)+params(32)*x(it_, 3);
residual(9)= lhs-rhs;
lhs =y(34);
rhs =y(42);
residual(10)= lhs-rhs;
lhs =y(35);
rhs =y(48);
residual(11)= lhs-rhs;
lhs =y(31);
rhs =y(41);
residual(12)= lhs-rhs;
lhs =y(32);
rhs =y(46);
residual(13)= lhs-rhs;
lhs =y(33);
rhs =y(3);
residual(14)= lhs-rhs;
lhs =y(39);
rhs =y(2);
residual(15)= lhs-rhs;
lhs =y(40);
rhs =y(14);
residual(16)= lhs-rhs;
lhs =y(36);
rhs =y(17)-y(16);
residual(17)= lhs-rhs;
lhs =y(37);
rhs =y(11);
residual(18)= lhs-rhs;
lhs =y(38);
rhs =y(12);
residual(19)= lhs-rhs;
lhs =y(16);
rhs =y(17)*params(36)+y(39)*params(37)+y(40)*params(38)+params(39)*y(15);
residual(20)= lhs-rhs;
lhs =y(36);
rhs =params(36)*(y(19)+y(18)*params(45))+params(37)*(y(34)+y(31)*params(45))+params(38)*(y(35)+y(32)*params(45))+params(39)*(y(49)+params(45)*y(47))+x(it_, 1);
residual(21)= lhs-rhs;
lhs =y(19);
rhs =y(36)*params(36)+y(37)*params(37)+y(38)*params(38)+params(39)*y(13);
residual(22)= lhs-rhs;
lhs =y(18);
rhs =params(41)+y(33)*params(42)+params(43)*y(10)+params(44)*y(4)+x(it_, 2);
residual(23)= lhs-rhs;
lhs =y(22)-params(40)*(y(44)-y(22));
rhs =y(20)-y(43);
residual(24)= lhs-rhs;
lhs =y(21);
rhs =4*(y(16)-y(1));
residual(25)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(25, 52);

  %
  % Jacobian matrix
  %

  g1(1,20)=(-1);
  g1(1,23)=1;
  g1(2,24)=1;
  g1(2,25)=(-0.25);
  g1(2,26)=(-0.25);
  g1(2,8)=(-0.25);
  g1(2,27)=(-0.25);
  g1(3,21)=(-1);
  g1(3,25)=1;
  g1(4,6)=(-1);
  g1(4,26)=1;
  g1(5,7)=(-1);
  g1(5,27)=1;
  g1(6,26)=(-1);
  g1(6,27)=(-1);
  g1(6,28)=1;
  g1(7,18)=(-1);
  g1(7,29)=1;
  g1(8,18)=(-1);
  g1(8,30)=1;
  g1(9,5)=(-params(1));
  g1(9,23)=1;
  g1(9,6)=(-params(6));
  g1(9,25)=(-params(5));
  g1(9,45)=(-params(10));
  g1(9,7)=(-params(7));
  g1(9,8)=(-params(8));
  g1(9,9)=(-params(15));
  g1(9,29)=(-params(14));
  g1(9,52)=(-params(32));
  g1(10,42)=(-1);
  g1(10,34)=1;
  g1(11,48)=(-1);
  g1(11,35)=1;
  g1(12,41)=(-1);
  g1(12,31)=1;
  g1(13,46)=(-1);
  g1(13,32)=1;
  g1(14,3)=(-1);
  g1(14,33)=1;
  g1(15,2)=(-1);
  g1(15,39)=1;
  g1(16,14)=(-1);
  g1(16,40)=1;
  g1(17,16)=1;
  g1(17,17)=(-1);
  g1(17,36)=1;
  g1(18,11)=(-1);
  g1(18,37)=1;
  g1(19,12)=(-1);
  g1(19,38)=1;
  g1(20,16)=1;
  g1(20,17)=(-params(36));
  g1(20,39)=(-params(37));
  g1(20,15)=(-params(39));
  g1(20,40)=(-params(38));
  g1(21,18)=(-(params(36)*params(45)));
  g1(21,19)=(-params(36));
  g1(21,31)=(-(params(37)*params(45)));
  g1(21,32)=(-(params(38)*params(45)));
  g1(21,47)=(-(params(39)*params(45)));
  g1(21,34)=(-params(37));
  g1(21,35)=(-params(38));
  g1(21,49)=(-params(39));
  g1(21,36)=1;
  g1(21,50)=(-1);
  g1(22,19)=1;
  g1(22,36)=(-params(36));
  g1(22,37)=(-params(37));
  g1(22,13)=(-params(39));
  g1(22,38)=(-params(38));
  g1(23,18)=1;
  g1(23,4)=(-params(44));
  g1(23,10)=(-params(43));
  g1(23,33)=(-params(42));
  g1(23,51)=(-1);
  g1(24,20)=(-1);
  g1(24,43)=1;
  g1(24,22)=1-(-params(40));
  g1(24,44)=(-params(40));
  g1(25,1)=4;
  g1(25,16)=(-4);
  g1(25,21)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],25,2704);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],25,140608);
end
end
end
end
