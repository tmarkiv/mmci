function [residual, g1, g2, g3] = US_YR13AL_dynamic(y, x, params, steady_state, it_)
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

residual = zeros(39, 1);
T104 = 1/(params(42)/(1-params(42)));
T120 = 1/(1+params(87)*params(85));
T125 = params(85)^2;
T138 = params(47)/params(85);
T152 = (params(46)-1)*params(99)/((1+T138)*params(46));
T158 = (1-T138)/((1+T138)*params(46));
T190 = params(65)*params(96)/params(93)*(1-params(88)/params(65))*(1-1/params(64));
T207 = 1/(1+params(87)*params(85)*params(53));
T222 = (1-params(54))*(1-params(87)*params(85)*params(54))/params(54)/(1+(params(50)-1)*params(37));
T231 = params(87)*params(85)/(1+params(87)*params(85));
T259 = (1-params(52))*(1-params(87)*params(85)*params(52))/((1+params(87)*params(85))*params(52))*1/(1+(params(56)-1)*params(35));
lhs =y(50);
rhs =y(35)*4;
residual(1)= lhs-rhs;
lhs =y(51);
rhs =y(48);
residual(2)= lhs-rhs;
lhs =y(52);
rhs =4*y(33);
residual(3)= lhs-rhs;
lhs =y(56);
rhs =y(31)-params(50)*y(36);
residual(4)= lhs-rhs;
lhs =y(57);
rhs =y(31);
residual(5)= lhs-rhs;
lhs =y(58);
rhs =y(49);
residual(6)= lhs-rhs;
lhs =y(53);
rhs =y(18);
residual(7)= lhs-rhs;
lhs =y(54);
rhs =y(19);
residual(8)= lhs-rhs;
lhs =y(55);
rhs =y(53)+y(54);
residual(9)= lhs-rhs;
lhs =y(59);
rhs =y(22)+y(23);
residual(10)= lhs-rhs;
lhs =y(60);
rhs =y(22)+y(23);
residual(11)= lhs-rhs;
lhs =y(50);
rhs =params(1)*y(17)+y(52)*params(5)+y(18)*params(6)+y(19)*params(7)+params(8)*y(20)+params(10)*y(68)+y(56)*params(14)+params(15)*y(21)+params(32)*x(it_, 6);
residual(12)= lhs-rhs;
lhs =y(58);
rhs =params(34)*x(it_, 7);
residual(13)= lhs-rhs;
lhs =y(48);
rhs =0.25*(y(20)+y(54)+y(52)+y(53));
residual(14)= lhs-rhs;
lhs =y(24);
rhs =params(41)*y(26)+(1-params(41))*y(34)-y(36);
residual(15)= lhs-rhs;
lhs =y(25);
rhs =y(26)*T104;
residual(16)= lhs-rhs;
lhs =y(26);
rhs =y(34)+y(32)-y(27);
residual(17)= lhs-rhs;
lhs =y(27);
rhs =y(25)+y(14);
residual(18)= lhs-rhs;
lhs =y(30);
rhs =T120*(y(5)+params(87)*params(85)*y(64)+1/(T125*params(44))*y(28))+y(39);
residual(19)= lhs-rhs;
lhs =y(29);
rhs =T138/(1+T138)*y(4)+1/(1+T138)*y(63)+T152*(y(32)-y(65))-T158*(y(35)-y(66)+y(37));
residual(20)= lhs-rhs;
lhs =y(31);
rhs =y(29)*params(97)+y(30)*params(96)+y(38)+y(25)*(params(65)-1+params(45))*params(96)/params(93)+T190*(y(27)+y(43)+y(3));
residual(21)= lhs-rhs;
lhs =y(31);
rhs =params(50)*(y(36)+params(41)*y(27)+(1-params(41))*y(32));
residual(22)= lhs-rhs;
lhs =y(33);
rhs =T207*(params(87)*params(85)*y(66)+params(53)*y(6)+y(24)*T222)+y(40);
residual(23)= lhs-rhs;
lhs =y(34);
rhs =T120*y(7)+T231*y(67)+y(6)*params(51)/(1+params(87)*params(85))-y(33)*(1+params(87)*params(85)*params(51))/(1+params(87)*params(85))+y(66)*T231+T259*(y(32)*params(55)+y(29)*1/(1-T138)-y(4)*T138/(1-T138)-y(34))+y(41);
residual(24)= lhs-rhs;
lhs =y(42);
rhs =y(14)*(1-params(92))+y(30)*params(92)+y(39)*params(44)*T125*params(92);
residual(25)= lhs-rhs;
lhs =y(36);
rhs =params(67)*y(8)+x(it_, 1);
residual(26)= lhs-rhs;
lhs =y(37);
rhs =params(69)*y(9)+x(it_, 2);
residual(27)= lhs-rhs;
lhs =y(38);
rhs =y(49)+params(70)*y(10)+x(it_, 1)*params(36);
residual(28)= lhs-rhs;
lhs =y(39);
rhs =params(72)*y(11)+x(it_, 3);
residual(29)= lhs-rhs;
lhs =y(40);
rhs =y(23)+params(74)*y(12)-params(77)*y(2);
residual(30)= lhs-rhs;
lhs =y(23);
rhs =x(it_, 4);
residual(31)= lhs-rhs;
lhs =y(41);
rhs =y(22)+params(75)*y(13)-params(76)*y(1);
residual(32)= lhs-rhs;
lhs =y(22);
rhs =x(it_, 5);
residual(33)= lhs-rhs;
lhs =y(43)+y(3);
rhs =y(26)*(params(65)-1+params(66))/params(65)+y(28)*(1-params(66))/params(65);
residual(34)= lhs-rhs;
lhs =y(46)/(params(65)*params(63));
rhs =y(15)+params(64)*(y(43)-y(15))+y(16);
residual(35)= lhs-rhs;
lhs =y(28)+y(44);
rhs =(params(65)-1+params(66))/params(65)*y(61)+(1-params(66))/params(65)*y(62);
residual(36)= lhs-rhs;
lhs =y(45)-(y(35)-y(66)+y(37));
rhs =(-params(62))*(y(46)-y(28)-y(27));
residual(37)= lhs-rhs;
lhs =y(45);
rhs =y(44);
residual(38)= lhs-rhs;
lhs =y(47);
rhs =y(45)-(y(35)-y(66)+y(37));
residual(39)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(39, 75);

  %
  % Jacobian matrix
  %

  g1(1,35)=(-4);
  g1(1,50)=1;
  g1(2,48)=(-1);
  g1(2,51)=1;
  g1(3,33)=(-4);
  g1(3,52)=1;
  g1(4,31)=(-1);
  g1(4,36)=params(50);
  g1(4,56)=1;
  g1(5,31)=(-1);
  g1(5,57)=1;
  g1(6,49)=(-1);
  g1(6,58)=1;
  g1(7,18)=(-1);
  g1(7,53)=1;
  g1(8,19)=(-1);
  g1(8,54)=1;
  g1(9,53)=(-1);
  g1(9,54)=(-1);
  g1(9,55)=1;
  g1(10,22)=(-1);
  g1(10,23)=(-1);
  g1(10,59)=1;
  g1(11,22)=(-1);
  g1(11,23)=(-1);
  g1(11,60)=1;
  g1(12,17)=(-params(1));
  g1(12,50)=1;
  g1(12,18)=(-params(6));
  g1(12,52)=(-params(5));
  g1(12,68)=(-params(10));
  g1(12,19)=(-params(7));
  g1(12,20)=(-params(8));
  g1(12,21)=(-params(15));
  g1(12,56)=(-params(14));
  g1(12,74)=(-params(32));
  g1(13,58)=1;
  g1(13,75)=(-params(34));
  g1(14,48)=1;
  g1(14,52)=(-0.25);
  g1(14,53)=(-0.25);
  g1(14,20)=(-0.25);
  g1(14,54)=(-0.25);
  g1(15,24)=1;
  g1(15,26)=(-params(41));
  g1(15,34)=(-(1-params(41)));
  g1(15,36)=1;
  g1(16,25)=1;
  g1(16,26)=(-T104);
  g1(17,26)=1;
  g1(17,27)=1;
  g1(17,32)=(-1);
  g1(17,34)=(-1);
  g1(18,25)=(-1);
  g1(18,27)=1;
  g1(18,14)=(-1);
  g1(19,28)=(-(T120*1/(T125*params(44))));
  g1(19,5)=(-T120);
  g1(19,30)=1;
  g1(19,64)=(-(params(87)*params(85)*T120));
  g1(19,39)=(-1);
  g1(20,4)=(-(T138/(1+T138)));
  g1(20,29)=1;
  g1(20,63)=(-(1/(1+T138)));
  g1(20,32)=(-T152);
  g1(20,65)=T152;
  g1(20,66)=(-T158);
  g1(20,35)=T158;
  g1(20,37)=T158;
  g1(21,25)=(-((params(65)-1+params(45))*params(96)/params(93)));
  g1(21,27)=(-T190);
  g1(21,3)=(-T190);
  g1(21,29)=(-params(97));
  g1(21,30)=(-params(96));
  g1(21,31)=1;
  g1(21,38)=(-1);
  g1(21,43)=(-T190);
  g1(22,27)=(-(params(50)*params(41)));
  g1(22,31)=1;
  g1(22,32)=(-(params(50)*(1-params(41))));
  g1(22,36)=(-params(50));
  g1(23,24)=(-(T207*T222));
  g1(23,6)=(-(params(53)*T207));
  g1(23,33)=1;
  g1(23,66)=(-(params(87)*params(85)*T207));
  g1(23,40)=(-1);
  g1(24,4)=(-(T259*(-(T138/(1-T138)))));
  g1(24,29)=(-(T259*1/(1-T138)));
  g1(24,32)=(-(T259*params(55)));
  g1(24,6)=(-(params(51)/(1+params(87)*params(85))));
  g1(24,33)=(1+params(87)*params(85)*params(51))/(1+params(87)*params(85));
  g1(24,66)=(-T231);
  g1(24,7)=(-T120);
  g1(24,34)=1-(-T259);
  g1(24,67)=(-T231);
  g1(24,41)=(-1);
  g1(25,30)=(-params(92));
  g1(25,39)=(-(params(44)*T125*params(92)));
  g1(25,14)=(-(1-params(92)));
  g1(25,42)=1;
  g1(26,8)=(-params(67));
  g1(26,36)=1;
  g1(26,69)=(-1);
  g1(27,9)=(-params(69));
  g1(27,37)=1;
  g1(27,70)=(-1);
  g1(28,10)=(-params(70));
  g1(28,38)=1;
  g1(28,49)=(-1);
  g1(28,69)=(-params(36));
  g1(29,11)=(-params(72));
  g1(29,39)=1;
  g1(29,71)=(-1);
  g1(30,2)=params(77);
  g1(30,23)=(-1);
  g1(30,12)=(-params(74));
  g1(30,40)=1;
  g1(31,23)=1;
  g1(31,72)=(-1);
  g1(32,1)=params(76);
  g1(32,22)=(-1);
  g1(32,13)=(-params(75));
  g1(32,41)=1;
  g1(33,22)=1;
  g1(33,73)=(-1);
  g1(34,26)=(-((params(65)-1+params(66))/params(65)));
  g1(34,3)=1;
  g1(34,28)=(-((1-params(66))/params(65)));
  g1(34,43)=1;
  g1(35,43)=(-params(64));
  g1(35,15)=(-(1-params(64)));
  g1(35,16)=(-1);
  g1(35,46)=1/(params(65)*params(63));
  g1(36,61)=(-((params(65)-1+params(66))/params(65)));
  g1(36,28)=1;
  g1(36,62)=(-((1-params(66))/params(65)));
  g1(36,44)=1;
  g1(37,27)=(-params(62));
  g1(37,28)=(-params(62));
  g1(37,66)=1;
  g1(37,35)=(-1);
  g1(37,37)=(-1);
  g1(37,45)=1;
  g1(37,46)=params(62);
  g1(38,44)=(-1);
  g1(38,45)=1;
  g1(39,66)=(-1);
  g1(39,35)=1;
  g1(39,37)=1;
  g1(39,45)=(-1);
  g1(39,47)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],39,5625);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],39,421875);
end
end
end
end
