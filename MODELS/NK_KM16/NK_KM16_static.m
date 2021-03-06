function [residual, g1, g2, g3] = NK_KM16_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 91, 1);

%
% Model equations
%

T195 = params(55)*y(2)^params(35);
T197 = (1+y(10))*T195/y(10);
T199 = 1/params(36);
T206 = params(43)/y(12);
T219 = y(2)^(-params(35));
T230 = 1/params(42);
T309 = params(55)*y(21)^params(35);
T311 = (1+y(29))*T309/y(29);
T316 = params(43)/y(31);
T327 = y(21)^(-params(35));
T386 = y(31)/y(36);
T388 = T386^params(39);
T397 = params(43)*params(38)*T386^(params(39)-1);
T403 = params(38)*y(36)^(1-params(39));
T404 = y(31)^(params(39)-1);
T409 = y(46)*params(39)/(params(39)-1)/y(47);
T540 = 1/params(60);
T544 = 1/params(59);
lhs =y(63);
rhs =y(41);
residual(1)= lhs-rhs;
lhs =y(64);
rhs =100*(log(y(31))+log(y(31))+log(y(31))+log(y(31))-4*log((y(31))));
residual(2)= lhs-rhs;
lhs =y(65);
rhs =400*log(y(31)/(y(31)));
residual(3)= lhs-rhs;
lhs =y(66);
rhs =100*(log(y(20))-log(y(1)));
residual(4)= lhs-rhs;
lhs =y(67);
rhs =100*(log(y(20))-log((y(20))));
residual(5)= lhs-rhs;
lhs =y(68);
rhs =y(56);
residual(6)= lhs-rhs;
lhs =y(63);
rhs =params(32)*x(3)+y(67)*params(31)+y(67)*params(30)+y(67)*params(29)+y(67)*params(28)+y(67)*params(27)+y(67)*params(26)+y(67)*params(25)+y(67)*params(24)+y(67)*params(23)+y(66)*params(22)+y(66)*params(21)+y(66)*params(20)+y(66)*params(19)+y(66)*params(18)+y(66)*params(17)+y(66)*params(16)+y(66)*params(15)+y(66)*params(14)+y(65)*params(13)+y(65)*params(12)+y(65)*params(11)+y(65)*params(10)+y(65)*params(6)+y(65)*params(5)+y(63)*params(1)+y(63)*params(2)+y(63)*params(3)+y(63)*params(4)+y(65)*params(7)+y(65)*params(8)+y(65)*params(9);
residual(7)= lhs-rhs;
lhs =y(68);
rhs =params(34)*x(4);
residual(8)= lhs-rhs;
lhs =y(11);
rhs =(1+y(10))/y(12);
residual(9)= lhs-rhs;
lhs =y(4);
rhs =1/params(40);
residual(10)= lhs-rhs;
lhs =y(1);
rhs =y(3);
residual(11)= lhs-rhs;
residual(12) = y(1)-y(2)-y(38);
lhs =y(5);
rhs =T197^T199;
residual(13)= lhs-rhs;
lhs =1;
rhs =y(11)*params(43);
residual(14)= lhs-rhs;
lhs =1;
rhs =T206*(1+y(9));
residual(15)= lhs-rhs;
lhs =y(14);
rhs =T206*(1+y(14)*(1-params(44)));
residual(16)= lhs-rhs;
lhs =y(13);
rhs =T219;
residual(17)= lhs-rhs;
lhs =params(49)*y(3)^params(37);
rhs =y(4)*T219*(1-y(15))*T230;
residual(18)= lhs-rhs;
lhs =y(6);
rhs =(1-params(44))*y(6)/y(12)+y(7)+y(16);
residual(19)= lhs-rhs;
lhs =y(6)*(1-params(44))*y(8)/y(12)+y(9)*y(7);
rhs =y(6)*y(8)-y(16)*y(8);
residual(20)= lhs-rhs;
lhs =y(7)+y(5)+y(3)*y(4)*y(15)-y(5)/y(12);
rhs =y(38)+y(6)*(params(44)+y(8))/y(12);
residual(21)= lhs-rhs;
lhs =y(17);
rhs =y(17)*params(45)+params(46)*y(19);
residual(22)= lhs-rhs;
lhs =y(12);
rhs =(y(12))*exp(y(18)/100);
residual(23)= lhs-rhs;
lhs =y(18);
rhs =y(18)*params(48)+x(2);
residual(24)= lhs-rhs;
lhs =y(16);
rhs =y(16)*params(47)+x(1);
residual(25)= lhs-rhs;
lhs =log(y(38))-log((y(38)));
rhs =y(56);
residual(26)= lhs-rhs;
lhs =y(30);
rhs =(1+y(29))/y(31);
residual(27)= lhs-rhs;
lhs =y(23);
rhs =y(37);
residual(28)= lhs-rhs;
lhs =y(20);
rhs =y(22)/y(45);
residual(29)= lhs-rhs;
residual(30) = y(20)-y(21)-y(38);
lhs =y(24);
rhs =T311^T199;
residual(31)= lhs-rhs;
lhs =1;
rhs =params(43)*y(30);
residual(32)= lhs-rhs;
lhs =1;
rhs =T316*(1+y(28));
residual(33)= lhs-rhs;
lhs =y(33);
rhs =T316*(1+(1-params(44))*y(33));
residual(34)= lhs-rhs;
lhs =y(32);
rhs =T327;
residual(35)= lhs-rhs;
lhs =params(49)*y(22)^params(37);
rhs =T230*y(23)*T327*(1-y(34));
residual(36)= lhs-rhs;
lhs =y(25);
rhs =y(16)+(1-params(44))*y(25)/y(31)+y(26);
residual(37)= lhs-rhs;
lhs =y(25)*(1-params(44))*y(27)/y(31)+y(28)*y(26);
rhs =y(25)*y(27)-y(16)*y(27);
residual(38)= lhs-rhs;
lhs =y(26)+y(24)+y(22)*y(23)*y(34)-y(24)/y(31);
rhs =y(38)+y(25)*(params(44)+y(27))/y(31);
residual(39)= lhs-rhs;
lhs =y(40);
rhs =params(45)*y(40)+params(46)*y(39);
residual(40)= lhs-rhs;
lhs =y(35);
rhs =x(2)+params(48)*y(35);
residual(41)= lhs-rhs;
lhs =y(36);
rhs =(y(36))*exp(y(35)/100);
residual(42)= lhs-rhs;
lhs =y(46);
rhs =y(20)*y(37)*y(32)+y(46)*params(43)*params(38)*T388;
residual(43)= lhs-rhs;
lhs =y(47);
rhs =y(20)*y(32)+y(47)*T397;
residual(44)= lhs-rhs;
lhs =1;
rhs =T403*T404+(1-params(38))*T409^(1-params(39));
residual(45)= lhs-rhs;
lhs =y(45);
rhs =T388*y(45)*params(38)+(1-params(38))*T409^(-params(39));
residual(46)= lhs-rhs;
lhs =y(42);
rhs =4*100*log(y(31)/(y(31)));
residual(47)= lhs-rhs;
lhs =y(41);
rhs =4*100*(y(29)-(y(29)));
residual(48)= lhs-rhs;
lhs =y(43);
rhs =100*log(y(20)/(y(20)));
residual(49)= lhs-rhs;
lhs =y(44);
rhs =100*log(y(1)/(y(1)));
residual(50)= lhs-rhs;
lhs =y(40);
rhs =100*(y(34)-(y(34)));
residual(51)= lhs-rhs;
lhs =y(17);
rhs =100*(y(15)-(y(15)));
residual(52)= lhs-rhs;
lhs =y(39);
rhs =100*log(y(25)/(y(25)));
residual(53)= lhs-rhs;
lhs =y(19);
rhs =100*log(y(6)/(y(6)));
residual(54)= lhs-rhs;
lhs =y(48);
rhs =100*log(y(21)/(y(21)));
residual(55)= lhs-rhs;
lhs =y(49);
rhs =100*log(y(23)/(y(23)));
residual(56)= lhs-rhs;
lhs =y(50);
rhs =100*log(y(22)/(y(22)));
residual(57)= lhs-rhs;
lhs =y(51);
rhs =100*log(y(26)/(y(26)));
residual(58)= lhs-rhs;
lhs =y(52);
rhs =100*log(y(24)/(y(24)));
residual(59)= lhs-rhs;
lhs =y(53);
rhs =y(41)-y(42);
residual(60)= lhs-rhs;
lhs =y(54);
rhs =100*log(y(33)/(y(33)));
residual(61)= lhs-rhs;
lhs =y(55);
rhs =4*100*(y(28)-(y(28)));
residual(62)= lhs-rhs;
lhs =y(57);
rhs =y(57)*(params(60)-params(63)*(1-params(56))*(1-params(57)))-params(63)*y(58)+y(35)*params(63)*(1-params(56))*(1-params(57))+x(3)*params(63);
residual(63)= lhs-rhs;
lhs =y(58);
rhs =y(57)*(1-params(57))*(1-params(56))*(-params(64))+y(58)*(params(59)-params(64))+y(35)*(1-params(57))*(1-params(56))*params(64)+x(3)*params(64);
residual(64)= lhs-rhs;
lhs =y(59);
rhs =(y(57)*(params(60)-params(63)*(1-params(56))*(1-params(57)))-params(63)*y(58)+y(35)*params(63)*(1-params(56))*(1-params(57))+x(3)*params(63))*T540;
residual(65)= lhs-rhs;
lhs =y(60);
rhs =(y(57)*(1-params(57))*(1-params(56))*(-params(64))+y(58)*(params(59)-params(64))+y(35)*(1-params(57))*(1-params(56))*params(64)+x(3)*params(64))*T544;
residual(66)= lhs-rhs;
lhs =y(61);
rhs =y(59)-y(57);
residual(67)= lhs-rhs;
lhs =y(62);
rhs =y(60)-y(58);
residual(68)= lhs-rhs;
lhs =y(69);
rhs =y(65);
residual(69)= lhs-rhs;
lhs =y(70);
rhs =y(65);
residual(70)= lhs-rhs;
lhs =y(71);
rhs =y(65);
residual(71)= lhs-rhs;
lhs =y(72);
rhs =y(66);
residual(72)= lhs-rhs;
lhs =y(73);
rhs =y(66);
residual(73)= lhs-rhs;
lhs =y(74);
rhs =y(66);
residual(74)= lhs-rhs;
lhs =y(75);
rhs =y(67);
residual(75)= lhs-rhs;
lhs =y(76);
rhs =y(67);
residual(76)= lhs-rhs;
lhs =y(77);
rhs =y(67);
residual(77)= lhs-rhs;
lhs =y(78);
rhs =y(31);
residual(78)= lhs-rhs;
lhs =y(79);
rhs =y(31);
residual(79)= lhs-rhs;
lhs =y(80);
rhs =y(67);
residual(80)= lhs-rhs;
lhs =y(81);
rhs =y(67);
residual(81)= lhs-rhs;
lhs =y(82);
rhs =y(67);
residual(82)= lhs-rhs;
lhs =y(83);
rhs =y(66);
residual(83)= lhs-rhs;
lhs =y(84);
rhs =y(66);
residual(84)= lhs-rhs;
lhs =y(85);
rhs =y(66);
residual(85)= lhs-rhs;
lhs =y(86);
rhs =y(63);
residual(86)= lhs-rhs;
lhs =y(87);
rhs =y(63);
residual(87)= lhs-rhs;
lhs =y(88);
rhs =y(63);
residual(88)= lhs-rhs;
lhs =y(89);
rhs =y(65);
residual(89)= lhs-rhs;
lhs =y(90);
rhs =y(65);
residual(90)= lhs-rhs;
lhs =y(91);
rhs =y(65);
residual(91)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(91, 91);

  %
  % Jacobian matrix
  %

T737 = getPowerDeriv(T197,T199,1);
T740 = getPowerDeriv(y(2),(-params(35)),1);
T835 = getPowerDeriv(T311,T199,1);
T838 = getPowerDeriv(y(21),(-params(35)),1);
T869 = 1/y(31);
T918 = ((y(31))-y(31))/((y(31))*(y(31)))/(y(31)/(y(31)));
T943 = getPowerDeriv(T386,params(39),1);
T948 = getPowerDeriv(T386,params(39)-1,1);
T1015 = params(39)/(params(39)-1)/y(47);
T1016 = getPowerDeriv(T409,1-params(39),1);
T1020 = getPowerDeriv(T409,(-params(39)),1);
T1027 = (-(y(46)*params(39)/(params(39)-1)))/(y(47)*y(47));
  g1(1,41)=(-1);
  g1(1,63)=1;
  g1(2,31)=(-(100*(T869+T869+T869+T869-4*1/(y(31)))));
  g1(2,64)=1;
  g1(3,31)=(-(400*T918));
  g1(3,65)=1;
  g1(4,1)=(-(100*(-(1/y(1)))));
  g1(4,20)=(-(100*1/y(20)));
  g1(4,66)=1;
  g1(5,20)=(-(100*(1/y(20)-1/(y(20)))));
  g1(5,67)=1;
  g1(6,56)=(-1);
  g1(6,68)=1;
  g1(7,63)=1-(params(4)+params(3)+params(1)+params(2));
  g1(7,65)=(-(params(13)+params(12)+params(11)+params(10)+params(9)+params(8)+params(7)+params(6)+params(5)));
  g1(7,66)=(-(params(22)+params(21)+params(20)+params(19)+params(18)+params(17)+params(16)+params(15)+params(14)));
  g1(7,67)=(-(params(31)+params(30)+params(29)+params(28)+params(27)+params(26)+params(25)+params(24)+params(23)));
  g1(8,68)=1;
  g1(9,10)=(-(1/y(12)));
  g1(9,11)=1;
  g1(9,12)=(-((-(1+y(10)))/(y(12)*y(12))));
  g1(10,4)=1;
  g1(11,1)=1;
  g1(11,3)=(-1);
  g1(12,1)=1;
  g1(12,2)=(-1);
  g1(12,38)=(-1);
  g1(13,2)=(-((1+y(10))*params(55)*getPowerDeriv(y(2),params(35),1)/y(10)*T737));
  g1(13,5)=1;
  g1(13,10)=(-(T737*(y(10)*T195-(1+y(10))*T195)/(y(10)*y(10))));
  g1(14,11)=(-params(43));
  g1(15,9)=(-T206);
  g1(15,12)=(-((1+y(9))*(-params(43))/(y(12)*y(12))));
  g1(16,12)=(-((1+y(14)*(1-params(44)))*(-params(43))/(y(12)*y(12))));
  g1(16,14)=1-T206*(1-params(44));
  g1(17,2)=(-T740);
  g1(17,13)=1;
  g1(18,2)=(-(T230*y(4)*(1-y(15))*T740));
  g1(18,3)=params(49)*getPowerDeriv(y(3),params(37),1);
  g1(18,4)=(-(T219*(1-y(15))*T230));
  g1(18,15)=(-(T230*y(4)*(-T219)));
  g1(19,6)=1-(1-params(44))/y(12);
  g1(19,7)=(-1);
  g1(19,12)=(-((-((1-params(44))*y(6)))/(y(12)*y(12))));
  g1(19,16)=(-1);
  g1(20,6)=(1-params(44))*y(8)/y(12)-y(8);
  g1(20,7)=y(9);
  g1(20,8)=(1-params(44))*y(6)/y(12)-(y(6)-y(16));
  g1(20,9)=y(7);
  g1(20,12)=(-(y(6)*(1-params(44))*y(8)))/(y(12)*y(12));
  g1(20,16)=y(8);
  g1(21,3)=y(4)*y(15);
  g1(21,4)=y(3)*y(15);
  g1(21,5)=1-1/y(12);
  g1(21,6)=(-((params(44)+y(8))/y(12)));
  g1(21,7)=1;
  g1(21,8)=(-(y(6)/y(12)));
  g1(21,12)=(-((-y(5))/(y(12)*y(12))))-(-(y(6)*(params(44)+y(8))))/(y(12)*y(12));
  g1(21,15)=y(4)*y(3);
  g1(21,38)=(-1);
  g1(22,17)=1-params(45);
  g1(22,19)=(-params(46));
  g1(23,12)=1-exp(y(18)/100);
  g1(23,18)=(-((y(12))*exp(y(18)/100)*0.01));
  g1(24,18)=1-params(48);
  g1(25,16)=1-params(47);
  g1(26,38)=1/y(38)-1/(y(38));
  g1(26,56)=(-1);
  g1(27,29)=(-T869);
  g1(27,30)=1;
  g1(27,31)=(-((-(1+y(29)))/(y(31)*y(31))));
  g1(28,23)=1;
  g1(28,37)=(-1);
  g1(29,20)=1;
  g1(29,22)=(-(1/y(45)));
  g1(29,45)=(-((-y(22))/(y(45)*y(45))));
  g1(30,20)=1;
  g1(30,21)=(-1);
  g1(30,38)=(-1);
  g1(31,21)=(-((1+y(29))*params(55)*getPowerDeriv(y(21),params(35),1)/y(29)*T835));
  g1(31,24)=1;
  g1(31,29)=(-(T835*(y(29)*T309-(1+y(29))*T309)/(y(29)*y(29))));
  g1(32,30)=(-params(43));
  g1(33,28)=(-T316);
  g1(33,31)=(-((1+y(28))*(-params(43))/(y(31)*y(31))));
  g1(34,31)=(-((1+(1-params(44))*y(33))*(-params(43))/(y(31)*y(31))));
  g1(34,33)=1-(1-params(44))*T316;
  g1(35,21)=(-T838);
  g1(35,32)=1;
  g1(36,21)=(-(T230*y(23)*(1-y(34))*T838));
  g1(36,22)=params(49)*getPowerDeriv(y(22),params(37),1);
  g1(36,23)=(-(T230*T327*(1-y(34))));
  g1(36,34)=(-(T230*y(23)*(-T327)));
  g1(37,16)=(-1);
  g1(37,25)=1-(1-params(44))/y(31);
  g1(37,26)=(-1);
  g1(37,31)=(-((-((1-params(44))*y(25)))/(y(31)*y(31))));
  g1(38,16)=y(27);
  g1(38,25)=(1-params(44))*y(27)/y(31)-y(27);
  g1(38,26)=y(28);
  g1(38,27)=y(25)*(1-params(44))/y(31)-(y(25)-y(16));
  g1(38,28)=y(26);
  g1(38,31)=y(25)*(-((1-params(44))*y(27)))/(y(31)*y(31));
  g1(39,22)=y(23)*y(34);
  g1(39,23)=y(22)*y(34);
  g1(39,24)=1-T869;
  g1(39,25)=(-((params(44)+y(27))/y(31)));
  g1(39,26)=1;
  g1(39,27)=(-(y(25)/y(31)));
  g1(39,31)=(-((-y(24))/(y(31)*y(31))))-(-(y(25)*(params(44)+y(27))))/(y(31)*y(31));
  g1(39,34)=y(23)*y(22);
  g1(39,38)=(-1);
  g1(40,39)=(-params(46));
  g1(40,40)=1-params(45);
  g1(41,35)=1-params(48);
  g1(42,35)=(-((y(36))*exp(y(35)/100)*0.01));
  g1(42,36)=1-exp(y(35)/100);
  g1(43,20)=(-(y(37)*y(32)));
  g1(43,31)=(-(y(46)*params(43)*params(38)*1/y(36)*T943));
  g1(43,32)=(-(y(20)*y(37)));
  g1(43,36)=(-(y(46)*params(43)*params(38)*T943*(-y(31))/(y(36)*y(36))));
  g1(43,37)=(-(y(20)*y(32)));
  g1(43,46)=1-params(43)*params(38)*T388;
  g1(44,20)=(-y(32));
  g1(44,31)=(-(y(47)*params(43)*params(38)*1/y(36)*T948));
  g1(44,32)=(-y(20));
  g1(44,36)=(-(y(47)*params(43)*params(38)*T948*(-y(31))/(y(36)*y(36))));
  g1(44,47)=1-T397;
  g1(45,31)=(-(T403*getPowerDeriv(y(31),params(39)-1,1)));
  g1(45,36)=(-(T404*params(38)*getPowerDeriv(y(36),1-params(39),1)));
  g1(45,46)=(-((1-params(38))*T1015*T1016));
  g1(45,47)=(-((1-params(38))*T1016*T1027));
  g1(46,31)=(-(y(45)*params(38)*1/y(36)*T943));
  g1(46,36)=(-(y(45)*params(38)*T943*(-y(31))/(y(36)*y(36))));
  g1(46,45)=1-params(38)*T388;
  g1(46,46)=(-((1-params(38))*T1015*T1020));
  g1(46,47)=(-((1-params(38))*T1020*T1027));
  g1(47,31)=(-(4*100*T918));
  g1(47,42)=1;
  g1(48,41)=1;
  g1(49,20)=(-(100*((y(20))-y(20))/((y(20))*(y(20)))/(y(20)/(y(20)))));
  g1(49,43)=1;
  g1(50,1)=(-(100*((y(1))-y(1))/((y(1))*(y(1)))/(y(1)/(y(1)))));
  g1(50,44)=1;
  g1(51,40)=1;
  g1(52,17)=1;
  g1(53,25)=(-(100*((y(25))-y(25))/((y(25))*(y(25)))/(y(25)/(y(25)))));
  g1(53,39)=1;
  g1(54,6)=(-(100*((y(6))-y(6))/((y(6))*(y(6)))/(y(6)/(y(6)))));
  g1(54,19)=1;
  g1(55,21)=(-(100*((y(21))-y(21))/((y(21))*(y(21)))/(y(21)/(y(21)))));
  g1(55,48)=1;
  g1(56,23)=(-(100*((y(23))-y(23))/((y(23))*(y(23)))/(y(23)/(y(23)))));
  g1(56,49)=1;
  g1(57,22)=(-(100*((y(22))-y(22))/((y(22))*(y(22)))/(y(22)/(y(22)))));
  g1(57,50)=1;
  g1(58,26)=(-(100*((y(26))-y(26))/((y(26))*(y(26)))/(y(26)/(y(26)))));
  g1(58,51)=1;
  g1(59,24)=(-(100*((y(24))-y(24))/((y(24))*(y(24)))/(y(24)/(y(24)))));
  g1(59,52)=1;
  g1(60,41)=(-1);
  g1(60,42)=1;
  g1(60,53)=1;
  g1(61,33)=(-(100*((y(33))-y(33))/((y(33))*(y(33)))/(y(33)/(y(33)))));
  g1(61,54)=1;
  g1(62,55)=1;
  g1(63,35)=(-(params(63)*(1-params(56))*(1-params(57))));
  g1(63,57)=1-(params(60)-params(63)*(1-params(56))*(1-params(57)));
  g1(63,58)=params(63);
  g1(64,35)=(-((1-params(57))*(1-params(56))*params(64)));
  g1(64,57)=(-((1-params(57))*(1-params(56))*(-params(64))));
  g1(64,58)=1-(params(59)-params(64));
  g1(65,35)=(-(params(63)*(1-params(56))*(1-params(57))*T540));
  g1(65,57)=(-((params(60)-params(63)*(1-params(56))*(1-params(57)))*T540));
  g1(65,58)=(-(T540*(-params(63))));
  g1(65,59)=1;
  g1(66,35)=(-((1-params(57))*(1-params(56))*params(64)*T544));
  g1(66,57)=(-((1-params(57))*(1-params(56))*(-params(64))*T544));
  g1(66,58)=(-((params(59)-params(64))*T544));
  g1(66,60)=1;
  g1(67,57)=1;
  g1(67,59)=(-1);
  g1(67,61)=1;
  g1(68,58)=1;
  g1(68,60)=(-1);
  g1(68,62)=1;
  g1(69,65)=(-1);
  g1(69,69)=1;
  g1(70,65)=(-1);
  g1(70,70)=1;
  g1(71,65)=(-1);
  g1(71,71)=1;
  g1(72,66)=(-1);
  g1(72,72)=1;
  g1(73,66)=(-1);
  g1(73,73)=1;
  g1(74,66)=(-1);
  g1(74,74)=1;
  g1(75,67)=(-1);
  g1(75,75)=1;
  g1(76,67)=(-1);
  g1(76,76)=1;
  g1(77,67)=(-1);
  g1(77,77)=1;
  g1(78,31)=(-1);
  g1(78,78)=1;
  g1(79,31)=(-1);
  g1(79,79)=1;
  g1(80,67)=(-1);
  g1(80,80)=1;
  g1(81,67)=(-1);
  g1(81,81)=1;
  g1(82,67)=(-1);
  g1(82,82)=1;
  g1(83,66)=(-1);
  g1(83,83)=1;
  g1(84,66)=(-1);
  g1(84,84)=1;
  g1(85,66)=(-1);
  g1(85,85)=1;
  g1(86,63)=(-1);
  g1(86,86)=1;
  g1(87,63)=(-1);
  g1(87,87)=1;
  g1(88,63)=(-1);
  g1(88,88)=1;
  g1(89,65)=(-1);
  g1(89,89)=1;
  g1(90,65)=(-1);
  g1(90,90)=1;
  g1(91,65)=(-1);
  g1(91,91)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],91,8281);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],91,753571);
end
end
end
end
