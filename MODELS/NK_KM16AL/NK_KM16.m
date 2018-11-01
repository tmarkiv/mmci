%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'NK_KM16';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('NK_KM16.log');
M_.exo_names = 'epsi_D';
M_.exo_names_tex = 'epsi\_D';
M_.exo_names_long = 'epsi_D';
M_.exo_names = char(M_.exo_names, 'eta_PIESTAR');
M_.exo_names_tex = char(M_.exo_names_tex, 'eta\_PIESTAR');
M_.exo_names_long = char(M_.exo_names_long, 'eta_PIESTAR');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.exo_names_long = char(M_.exo_names_long, 'fiscal_');
M_.endo_names = 'yn';
M_.endo_names_tex = 'yn';
M_.endo_names_long = 'yn';
M_.endo_names = char(M_.endo_names, 'cn');
M_.endo_names_tex = char(M_.endo_names_tex, 'cn');
M_.endo_names_long = char(M_.endo_names_long, 'cn');
M_.endo_names = char(M_.endo_names, 'hn');
M_.endo_names_tex = char(M_.endo_names_tex, 'hn');
M_.endo_names_long = char(M_.endo_names_long, 'hn');
M_.endo_names = char(M_.endo_names, 'wn');
M_.endo_names_tex = char(M_.endo_names_tex, 'wn');
M_.endo_names_long = char(M_.endo_names_long, 'wn');
M_.endo_names = char(M_.endo_names, 'mn');
M_.endo_names_tex = char(M_.endo_names_tex, 'mn');
M_.endo_names_long = char(M_.endo_names_long, 'mn');
M_.endo_names = char(M_.endo_names, 'Dn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dn');
M_.endo_names_long = char(M_.endo_names_long, 'Dn');
M_.endo_names = char(M_.endo_names, 'Dnewn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dnewn');
M_.endo_names_long = char(M_.endo_names_long, 'Dnewn');
M_.endo_names = char(M_.endo_names, 'i_Dn');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_Dn');
M_.endo_names_long = char(M_.endo_names_long, 'i_Dn');
M_.endo_names = char(M_.endo_names, 'i_Dnewn');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_Dnewn');
M_.endo_names_long = char(M_.endo_names_long, 'i_Dnewn');
M_.endo_names = char(M_.endo_names, 'in');
M_.endo_names_tex = char(M_.endo_names_tex, 'in');
M_.endo_names_long = char(M_.endo_names_long, 'in');
M_.endo_names = char(M_.endo_names, 'Rn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rn');
M_.endo_names_long = char(M_.endo_names_long, 'Rn');
M_.endo_names = char(M_.endo_names, 'pin');
M_.endo_names_tex = char(M_.endo_names_tex, 'pin');
M_.endo_names_long = char(M_.endo_names_long, 'pin');
M_.endo_names = char(M_.endo_names, 'lamdan');
M_.endo_names_tex = char(M_.endo_names_tex, 'lamdan');
M_.endo_names_long = char(M_.endo_names_long, 'lamdan');
M_.endo_names = char(M_.endo_names, 'mun');
M_.endo_names_tex = char(M_.endo_names_tex, 'mun');
M_.endo_names_long = char(M_.endo_names_long, 'mun');
M_.endo_names = char(M_.endo_names, 'taun');
M_.endo_names_tex = char(M_.endo_names_tex, 'taun');
M_.endo_names_long = char(M_.endo_names_long, 'taun');
M_.endo_names = char(M_.endo_names, 'Dbs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dbs');
M_.endo_names_long = char(M_.endo_names_long, 'Dbs');
M_.endo_names = char(M_.endo_names, 'taun_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'taun\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'taun_obs');
M_.endo_names = char(M_.endo_names, 'PIESTARn');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIESTARn');
M_.endo_names_long = char(M_.endo_names_long, 'PIESTARn');
M_.endo_names = char(M_.endo_names, 'Dn_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dn\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Dn_obs');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'h');
M_.endo_names_tex = char(M_.endo_names_tex, 'h');
M_.endo_names_long = char(M_.endo_names_long, 'h');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'w');
M_.endo_names = char(M_.endo_names, 'm');
M_.endo_names_tex = char(M_.endo_names_tex, 'm');
M_.endo_names_long = char(M_.endo_names_long, 'm');
M_.endo_names = char(M_.endo_names, 'D');
M_.endo_names_tex = char(M_.endo_names_tex, 'D');
M_.endo_names_long = char(M_.endo_names_long, 'D');
M_.endo_names = char(M_.endo_names, 'Dnew');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dnew');
M_.endo_names_long = char(M_.endo_names_long, 'Dnew');
M_.endo_names = char(M_.endo_names, 'i_D');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_D');
M_.endo_names_long = char(M_.endo_names_long, 'i_D');
M_.endo_names = char(M_.endo_names, 'i_Dnew');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_Dnew');
M_.endo_names_long = char(M_.endo_names_long, 'i_Dnew');
M_.endo_names = char(M_.endo_names, 'i');
M_.endo_names_tex = char(M_.endo_names_tex, 'i');
M_.endo_names_long = char(M_.endo_names_long, 'i');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'lamda');
M_.endo_names_tex = char(M_.endo_names_tex, 'lamda');
M_.endo_names_long = char(M_.endo_names_long, 'lamda');
M_.endo_names = char(M_.endo_names, 'mu');
M_.endo_names_tex = char(M_.endo_names_tex, 'mu');
M_.endo_names_long = char(M_.endo_names_long, 'mu');
M_.endo_names = char(M_.endo_names, 'tau');
M_.endo_names_tex = char(M_.endo_names_tex, 'tau');
M_.endo_names_long = char(M_.endo_names_long, 'tau');
M_.endo_names = char(M_.endo_names, 'PIESTAR');
M_.endo_names_tex = char(M_.endo_names_tex, 'PIESTAR');
M_.endo_names_long = char(M_.endo_names_long, 'PIESTAR');
M_.endo_names = char(M_.endo_names, 'pistar');
M_.endo_names_tex = char(M_.endo_names_tex, 'pistar');
M_.endo_names_long = char(M_.endo_names_long, 'pistar');
M_.endo_names = char(M_.endo_names, 'MC');
M_.endo_names_tex = char(M_.endo_names_tex, 'MC');
M_.endo_names_long = char(M_.endo_names_long, 'MC');
M_.endo_names = char(M_.endo_names, 'G');
M_.endo_names_tex = char(M_.endo_names_tex, 'G');
M_.endo_names_long = char(M_.endo_names_long, 'G');
M_.endo_names = char(M_.endo_names, 'D_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'D\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'D_obs');
M_.endo_names = char(M_.endo_names, 'tau_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'tau\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'tau_obs');
M_.endo_names = char(M_.endo_names, 'i_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'i_obs');
M_.endo_names = char(M_.endo_names, 'pi_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'pi_obs');
M_.endo_names = char(M_.endo_names, 'y_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'y\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'y_obs');
M_.endo_names = char(M_.endo_names, 'yn_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'yn\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'yn_obs');
M_.endo_names = char(M_.endo_names, 'Disp');
M_.endo_names_tex = char(M_.endo_names_tex, 'Disp');
M_.endo_names_long = char(M_.endo_names_long, 'Disp');
M_.endo_names = char(M_.endo_names, 'Z1');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z1');
M_.endo_names_long = char(M_.endo_names_long, 'Z1');
M_.endo_names = char(M_.endo_names, 'Z2');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z2');
M_.endo_names_long = char(M_.endo_names_long, 'Z2');
M_.endo_names = char(M_.endo_names, 'c_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'c\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'c_obs');
M_.endo_names = char(M_.endo_names, 'w_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'w\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'w_obs');
M_.endo_names = char(M_.endo_names, 'h_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'h\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'h_obs');
M_.endo_names = char(M_.endo_names, 'Dnew_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'Dnew\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'Dnew_obs');
M_.endo_names = char(M_.endo_names, 'm_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'm\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'm_obs');
M_.endo_names = char(M_.endo_names, 'Rrate');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rrate');
M_.endo_names_long = char(M_.endo_names_long, 'Rrate');
M_.endo_names = char(M_.endo_names, 'mu_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'mu\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'mu_obs');
M_.endo_names = char(M_.endo_names, 'i_Dnew_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'i\_Dnew\_obs');
M_.endo_names_long = char(M_.endo_names_long, 'i_Dnew_obs');
M_.endo_names = char(M_.endo_names, 'G_');
M_.endo_names_tex = char(M_.endo_names_tex, 'G\_');
M_.endo_names_long = char(M_.endo_names_long, 'G_');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'fispol');
M_.endo_names_tex = char(M_.endo_names_tex, 'fispol');
M_.endo_names_long = char(M_.endo_names_long, 'fispol');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_101');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_101');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_101');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_105');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_105');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_105');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_109');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_109');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_109');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_136');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_136');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_136');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_140');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_140');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_140');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_144');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_144');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_144');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_171');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_171');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_171');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_175');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_175');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_175');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_179');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_179');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_179');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_30_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_30\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_30_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_30_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_30\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_30_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_60_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_60\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_60_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_60_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_60\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_60_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_60_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_60\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_60_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_59_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_59\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_59_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_59_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_59\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_59_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_59_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_59\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_59_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_56_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_56\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_56_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_56_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_56\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_56_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_56_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_56\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_56_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_58_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_58\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_58_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_58_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_58\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_58_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_58_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_58\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_58_3');
M_.endo_partitions = struct();
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names_long = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names_long = char(M_.param_names_long, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names_long = char(M_.param_names_long, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names_long = char(M_.param_names_long, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names_long = char(M_.param_names_long, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names_long = char(M_.param_names_long, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names_long = char(M_.param_names_long, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names_long = char(M_.param_names_long, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names_long = char(M_.param_names_long, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names_long = char(M_.param_names_long, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names_long = char(M_.param_names_long, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names_long = char(M_.param_names_long, 'std_r_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names_long = char(M_.param_names_long, 'std_r_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 'sigmac');
M_.param_names_tex = char(M_.param_names_tex, 'sigmac');
M_.param_names_long = char(M_.param_names_long, 'sigmac');
M_.param_names = char(M_.param_names, 'sigmam');
M_.param_names_tex = char(M_.param_names_tex, 'sigmam');
M_.param_names_long = char(M_.param_names_long, 'sigmam');
M_.param_names = char(M_.param_names, 'sigmah');
M_.param_names_tex = char(M_.param_names_tex, 'sigmah');
M_.param_names_long = char(M_.param_names_long, 'sigmah');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, 'theta');
M_.param_names_long = char(M_.param_names_long, 'theta');
M_.param_names = char(M_.param_names, 'epsi');
M_.param_names_tex = char(M_.param_names_tex, 'epsi');
M_.param_names_long = char(M_.param_names_long, 'epsi');
M_.param_names = char(M_.param_names, 'markup');
M_.param_names_tex = char(M_.param_names_tex, 'markup');
M_.param_names_long = char(M_.param_names_long, 'markup');
M_.param_names = char(M_.param_names, 'epsiw');
M_.param_names_tex = char(M_.param_names_tex, 'epsiw');
M_.param_names_long = char(M_.param_names_long, 'epsiw');
M_.param_names = char(M_.param_names, 'markupw');
M_.param_names_tex = char(M_.param_names_tex, 'markupw');
M_.param_names_long = char(M_.param_names_long, 'markupw');
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, 'betta');
M_.param_names_long = char(M_.param_names_long, 'betta');
M_.param_names = char(M_.param_names, 'alphaa');
M_.param_names_tex = char(M_.param_names_tex, 'alphaa');
M_.param_names_long = char(M_.param_names_long, 'alphaa');
M_.param_names = char(M_.param_names, 'rho_tau');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_tau');
M_.param_names_long = char(M_.param_names_long, 'rho_tau');
M_.param_names = char(M_.param_names, 'phi_tau_D');
M_.param_names_tex = char(M_.param_names_tex, 'phi\_tau\_D');
M_.param_names_long = char(M_.param_names_long, 'phi_tau_D');
M_.param_names = char(M_.param_names, 'rho_D');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_D');
M_.param_names_long = char(M_.param_names_long, 'rho_D');
M_.param_names = char(M_.param_names, 'rho_pi');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_pi');
M_.param_names_long = char(M_.param_names_long, 'rho_pi');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'rho_i');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_i');
M_.param_names_long = char(M_.param_names_long, 'rho_i');
M_.param_names = char(M_.param_names, 'phipi');
M_.param_names_tex = char(M_.param_names_tex, 'phipi');
M_.param_names_long = char(M_.param_names_long, 'phipi');
M_.param_names = char(M_.param_names, 'phiy');
M_.param_names_tex = char(M_.param_names_tex, 'phiy');
M_.param_names_long = char(M_.param_names_long, 'phiy');
M_.param_names = char(M_.param_names, 'rho_r');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_r');
M_.param_names_long = char(M_.param_names_long, 'rho_r');
M_.param_names = char(M_.param_names, 'rho_G');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_G');
M_.param_names_long = char(M_.param_names_long, 'rho_G');
M_.param_names = char(M_.param_names, 'xi');
M_.param_names_tex = char(M_.param_names_tex, 'xi');
M_.param_names_long = char(M_.param_names_long, 'xi');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 85;
M_.param_nbr = 55;
M_.orig_endo_nbr = 62;
M_.aux_vars(1).endo_index = 63;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 64;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 65;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 66;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 67;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 68;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 69;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 70;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 71;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 72;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 31;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 73;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 31;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 74;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 61;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 75;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 61;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 76;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 61;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 77;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 60;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 78;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 60;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 79;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 60;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 80;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 57;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 81;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 57;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 82;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 57;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 83;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 59;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 84;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 59;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 85;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 59;
M_.aux_vars(23).orig_lead_lag = -3;
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
erase_compiled_function('NK_KM16_static');
erase_compiled_function('NK_KM16_dynamic');
M_.orig_eq_nbr = 62;
M_.eq_nbr = 85;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 32 0;
 0 33 117;
 0 34 0;
 0 35 0;
 1 36 0;
 2 37 0;
 0 38 0;
 3 39 0;
 0 40 118;
 0 41 0;
 0 42 0;
 0 43 119;
 0 44 0;
 0 45 120;
 0 46 0;
 4 47 0;
 5 48 0;
 6 49 0;
 0 50 0;
 0 51 0;
 0 52 121;
 0 53 0;
 0 54 0;
 7 55 0;
 8 56 0;
 0 57 0;
 9 58 0;
 0 59 122;
 0 60 0;
 0 61 0;
 10 62 123;
 0 63 0;
 0 64 124;
 0 65 0;
 11 66 0;
 0 67 125;
 0 68 0;
 0 69 0;
 0 70 0;
 12 71 0;
 0 72 0;
 0 73 126;
 0 74 0;
 0 75 0;
 13 76 0;
 0 77 127;
 0 78 128;
 0 79 0;
 0 80 0;
 0 81 0;
 0 82 0;
 0 83 0;
 0 84 0;
 0 85 0;
 0 86 0;
 0 87 0;
 14 88 0;
 0 89 0;
 15 90 129;
 16 91 130;
 17 92 131;
 0 93 0;
 0 94 132;
 0 95 133;
 0 96 134;
 0 97 135;
 0 98 136;
 0 99 137;
 0 100 138;
 0 101 139;
 0 102 140;
 18 103 0;
 19 104 0;
 20 105 0;
 21 106 0;
 22 107 0;
 23 108 0;
 24 109 0;
 25 110 0;
 26 111 0;
 27 112 0;
 28 113 0;
 29 114 0;
 30 115 0;
 31 116 0;]';
M_.nstatic = 34;
M_.nfwrd   = 20;
M_.npred   = 27;
M_.nboth   = 4;
M_.nsfwrd   = 24;
M_.nspred   = 31;
M_.ndynamic   = 51;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(85, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(55, 1);
M_.NNZDerivatives = [286; 272; -1];
M_.params( 43 ) = 0.99;
betta = M_.params( 43 );
M_.params( 38 ) = 0.75;
theta = M_.params( 38 );
M_.params( 35 ) = 1.5;
sigmac = M_.params( 35 );
M_.params( 37 ) = 2;
sigmah = M_.params( 37 );
M_.params( 36 ) = 2.56;
sigmam = M_.params( 36 );
M_.params( 39 ) = 6;
epsi = M_.params( 39 );
M_.params( 41 ) = 6;
epsiw = M_.params( 41 );
M_.params( 40 ) = M_.params(39)/(M_.params(39)-1);
markup = M_.params( 40 );
M_.params( 42 ) = M_.params(41)/(M_.params(41)-1);
markupw = M_.params( 42 );
M_.params( 44 ) = 0.0472;
alphaa = M_.params( 44 );
M_.params( 55 ) = 7.140600000000007e-006;
xi = M_.params( 55 );
M_.params( 49 ) = 35.4634381498;
phi = M_.params( 49 );
M_.params( 47 ) = 0.00;
rho_D = M_.params( 47 );
M_.params( 48 ) = 0.99;
rho_pi = M_.params( 48 );
M_.params( 54 ) = 0;
rho_G = M_.params( 54 );
M_.params( 45 ) = 0.5;
rho_tau = M_.params( 45 );
M_.params( 46 ) = 0.0037;
phi_tau_D = M_.params( 46 );
M_.params( 50 ) = 0.75;
rho_i = M_.params( 50 );
M_.params( 51 ) = 1.5;
phipi = M_.params( 51 );
M_.params( 52 ) = 0.5;
phiy = M_.params( 52 );
M_.params( 53 ) = 0.01;
rho_r = M_.params( 53 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);  
M_.params( 34 ) = 0.05;
coffispol = M_.params( 34 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.011449;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 1;
M_.Sigma_e(4, 4) = 1;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
save('NK_KM16_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('NK_KM16_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('NK_KM16_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('NK_KM16_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('NK_KM16_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('NK_KM16_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('NK_KM16_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off