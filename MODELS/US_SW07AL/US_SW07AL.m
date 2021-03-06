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
M_.fname = 'US_SW07AL';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('US_SW07AL.log');
M_.exo_names = 'ea';
M_.exo_names_tex = 'ea';
M_.exo_names_long = 'ea';
M_.exo_names = char(M_.exo_names, 'eb');
M_.exo_names_tex = char(M_.exo_names_tex, 'eb');
M_.exo_names_long = char(M_.exo_names_long, 'eb');
M_.exo_names = char(M_.exo_names, 'eqs');
M_.exo_names_tex = char(M_.exo_names_tex, 'eqs');
M_.exo_names_long = char(M_.exo_names_long, 'eqs');
M_.exo_names = char(M_.exo_names, 'em');
M_.exo_names_tex = char(M_.exo_names_tex, 'em');
M_.exo_names_long = char(M_.exo_names_long, 'em');
M_.exo_names = char(M_.exo_names, 'epinf');
M_.exo_names_tex = char(M_.exo_names_tex, 'epinf');
M_.exo_names_long = char(M_.exo_names_long, 'epinf');
M_.exo_names = char(M_.exo_names, 'ew');
M_.exo_names_tex = char(M_.exo_names_tex, 'ew');
M_.exo_names_long = char(M_.exo_names_long, 'ew');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.exo_names_long = char(M_.exo_names_long, 'fiscal_');
M_.endo_names = 'ewma';
M_.endo_names_tex = 'ewma';
M_.endo_names_long = 'ewma';
M_.endo_names = char(M_.endo_names, 'epinfma');
M_.endo_names_tex = char(M_.endo_names_tex, 'epinfma');
M_.endo_names_long = char(M_.endo_names_long, 'epinfma');
M_.endo_names = char(M_.endo_names, 'zcapf');
M_.endo_names_tex = char(M_.endo_names_tex, 'zcapf');
M_.endo_names_long = char(M_.endo_names_long, 'zcapf');
M_.endo_names = char(M_.endo_names, 'rkf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rkf');
M_.endo_names_long = char(M_.endo_names_long, 'rkf');
M_.endo_names = char(M_.endo_names, 'kf');
M_.endo_names_tex = char(M_.endo_names_tex, 'kf');
M_.endo_names_long = char(M_.endo_names_long, 'kf');
M_.endo_names = char(M_.endo_names, 'pkf');
M_.endo_names_tex = char(M_.endo_names_tex, 'pkf');
M_.endo_names_long = char(M_.endo_names_long, 'pkf');
M_.endo_names = char(M_.endo_names, 'cf');
M_.endo_names_tex = char(M_.endo_names_tex, 'cf');
M_.endo_names_long = char(M_.endo_names_long, 'cf');
M_.endo_names = char(M_.endo_names, 'invef');
M_.endo_names_tex = char(M_.endo_names_tex, 'invef');
M_.endo_names_long = char(M_.endo_names_long, 'invef');
M_.endo_names = char(M_.endo_names, 'yf');
M_.endo_names_tex = char(M_.endo_names_tex, 'yf');
M_.endo_names_long = char(M_.endo_names_long, 'yf');
M_.endo_names = char(M_.endo_names, 'labf');
M_.endo_names_tex = char(M_.endo_names_tex, 'labf');
M_.endo_names_long = char(M_.endo_names_long, 'labf');
M_.endo_names = char(M_.endo_names, 'wf');
M_.endo_names_tex = char(M_.endo_names_tex, 'wf');
M_.endo_names_long = char(M_.endo_names_long, 'wf');
M_.endo_names = char(M_.endo_names, 'rrf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rrf');
M_.endo_names_long = char(M_.endo_names_long, 'rrf');
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'zcap');
M_.endo_names_tex = char(M_.endo_names_tex, 'zcap');
M_.endo_names_long = char(M_.endo_names_long, 'zcap');
M_.endo_names = char(M_.endo_names, 'rk');
M_.endo_names_tex = char(M_.endo_names_tex, 'rk');
M_.endo_names_long = char(M_.endo_names_long, 'rk');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names_long = char(M_.endo_names_long, 'k');
M_.endo_names = char(M_.endo_names, 'pk');
M_.endo_names_tex = char(M_.endo_names_tex, 'pk');
M_.endo_names_long = char(M_.endo_names_long, 'pk');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'inve');
M_.endo_names_tex = char(M_.endo_names_tex, 'inve');
M_.endo_names_long = char(M_.endo_names_long, 'inve');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'lab');
M_.endo_names_tex = char(M_.endo_names_tex, 'lab');
M_.endo_names_long = char(M_.endo_names_long, 'lab');
M_.endo_names = char(M_.endo_names, 'pinf');
M_.endo_names_tex = char(M_.endo_names_tex, 'pinf');
M_.endo_names_long = char(M_.endo_names_long, 'pinf');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'w');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, 'b');
M_.endo_names_long = char(M_.endo_names_long, 'b');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'qs');
M_.endo_names_tex = char(M_.endo_names_tex, 'qs');
M_.endo_names_long = char(M_.endo_names_long, 'qs');
M_.endo_names = char(M_.endo_names, 'ms');
M_.endo_names_tex = char(M_.endo_names_tex, 'ms');
M_.endo_names_long = char(M_.endo_names_long, 'ms');
M_.endo_names = char(M_.endo_names, 'spinf');
M_.endo_names_tex = char(M_.endo_names_tex, 'spinf');
M_.endo_names_long = char(M_.endo_names_long, 'spinf');
M_.endo_names = char(M_.endo_names, 'sw');
M_.endo_names_tex = char(M_.endo_names_tex, 'sw');
M_.endo_names_long = char(M_.endo_names_long, 'sw');
M_.endo_names = char(M_.endo_names, 'kpf');
M_.endo_names_tex = char(M_.endo_names_tex, 'kpf');
M_.endo_names_long = char(M_.endo_names_long, 'kpf');
M_.endo_names = char(M_.endo_names, 'kp');
M_.endo_names_tex = char(M_.endo_names_tex, 'kp');
M_.endo_names_long = char(M_.endo_names_long, 'kp');
M_.endo_names = char(M_.endo_names, 'pinf4');
M_.endo_names_tex = char(M_.endo_names_tex, 'pinf4');
M_.endo_names_long = char(M_.endo_names_long, 'pinf4');
M_.endo_names = char(M_.endo_names, 'eg');
M_.endo_names_tex = char(M_.endo_names_tex, 'eg');
M_.endo_names_long = char(M_.endo_names_long, 'eg');
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
M_.endo_names = char(M_.endo_names, 'inflationql');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationql');
M_.endo_names_long = char(M_.endo_names_long, 'inflationql');
M_.endo_names = char(M_.endo_names, 'inflationql2');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationql2');
M_.endo_names_long = char(M_.endo_names_long, 'inflationql2');
M_.endo_names = char(M_.endo_names, 'inflationqls');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationqls');
M_.endo_names_long = char(M_.endo_names_long, 'inflationqls');
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
M_.param_names = char(M_.param_names, 'curvw');
M_.param_names_tex = char(M_.param_names_tex, 'curvw');
M_.param_names_long = char(M_.param_names_long, 'curvw');
M_.param_names = char(M_.param_names, 'cgy');
M_.param_names_tex = char(M_.param_names_tex, 'cgy');
M_.param_names_long = char(M_.param_names_long, 'cgy');
M_.param_names = char(M_.param_names, 'curvp');
M_.param_names_tex = char(M_.param_names_tex, 'curvp');
M_.param_names_long = char(M_.param_names_long, 'curvp');
M_.param_names = char(M_.param_names, 'constelab');
M_.param_names_tex = char(M_.param_names_tex, 'constelab');
M_.param_names_long = char(M_.param_names_long, 'constelab');
M_.param_names = char(M_.param_names, 'constepinf');
M_.param_names_tex = char(M_.param_names_tex, 'constepinf');
M_.param_names_long = char(M_.param_names_long, 'constepinf');
M_.param_names = char(M_.param_names, 'constebeta');
M_.param_names_tex = char(M_.param_names_tex, 'constebeta');
M_.param_names_long = char(M_.param_names_long, 'constebeta');
M_.param_names = char(M_.param_names, 'cmaw');
M_.param_names_tex = char(M_.param_names_tex, 'cmaw');
M_.param_names_long = char(M_.param_names_long, 'cmaw');
M_.param_names = char(M_.param_names, 'cmap');
M_.param_names_tex = char(M_.param_names_tex, 'cmap');
M_.param_names_long = char(M_.param_names_long, 'cmap');
M_.param_names = char(M_.param_names, 'calfa');
M_.param_names_tex = char(M_.param_names_tex, 'calfa');
M_.param_names_long = char(M_.param_names_long, 'calfa');
M_.param_names = char(M_.param_names, 'czcap');
M_.param_names_tex = char(M_.param_names_tex, 'czcap');
M_.param_names_long = char(M_.param_names_long, 'czcap');
M_.param_names = char(M_.param_names, 'cbeta');
M_.param_names_tex = char(M_.param_names_tex, 'cbeta');
M_.param_names_long = char(M_.param_names_long, 'cbeta');
M_.param_names = char(M_.param_names, 'csadjcost');
M_.param_names_tex = char(M_.param_names_tex, 'csadjcost');
M_.param_names_long = char(M_.param_names_long, 'csadjcost');
M_.param_names = char(M_.param_names, 'ctou');
M_.param_names_tex = char(M_.param_names_tex, 'ctou');
M_.param_names_long = char(M_.param_names_long, 'ctou');
M_.param_names = char(M_.param_names, 'csigma');
M_.param_names_tex = char(M_.param_names_tex, 'csigma');
M_.param_names_long = char(M_.param_names_long, 'csigma');
M_.param_names = char(M_.param_names, 'chabb');
M_.param_names_tex = char(M_.param_names_tex, 'chabb');
M_.param_names_long = char(M_.param_names_long, 'chabb');
M_.param_names = char(M_.param_names, 'ccs');
M_.param_names_tex = char(M_.param_names_tex, 'ccs');
M_.param_names_long = char(M_.param_names_long, 'ccs');
M_.param_names = char(M_.param_names, 'cinvs');
M_.param_names_tex = char(M_.param_names_tex, 'cinvs');
M_.param_names_long = char(M_.param_names_long, 'cinvs');
M_.param_names = char(M_.param_names, 'cfc');
M_.param_names_tex = char(M_.param_names_tex, 'cfc');
M_.param_names_long = char(M_.param_names_long, 'cfc');
M_.param_names = char(M_.param_names, 'cindw');
M_.param_names_tex = char(M_.param_names_tex, 'cindw');
M_.param_names_long = char(M_.param_names_long, 'cindw');
M_.param_names = char(M_.param_names, 'cprobw');
M_.param_names_tex = char(M_.param_names_tex, 'cprobw');
M_.param_names_long = char(M_.param_names_long, 'cprobw');
M_.param_names = char(M_.param_names, 'cindp');
M_.param_names_tex = char(M_.param_names_tex, 'cindp');
M_.param_names_long = char(M_.param_names_long, 'cindp');
M_.param_names = char(M_.param_names, 'cprobp');
M_.param_names_tex = char(M_.param_names_tex, 'cprobp');
M_.param_names_long = char(M_.param_names_long, 'cprobp');
M_.param_names = char(M_.param_names, 'csigl');
M_.param_names_tex = char(M_.param_names_tex, 'csigl');
M_.param_names_long = char(M_.param_names_long, 'csigl');
M_.param_names = char(M_.param_names, 'clandaw');
M_.param_names_tex = char(M_.param_names_tex, 'clandaw');
M_.param_names_long = char(M_.param_names_long, 'clandaw');
M_.param_names = char(M_.param_names, 'crdpi');
M_.param_names_tex = char(M_.param_names_tex, 'crdpi');
M_.param_names_long = char(M_.param_names_long, 'crdpi');
M_.param_names = char(M_.param_names, 'crpi');
M_.param_names_tex = char(M_.param_names_tex, 'crpi');
M_.param_names_long = char(M_.param_names_long, 'crpi');
M_.param_names = char(M_.param_names, 'crdy');
M_.param_names_tex = char(M_.param_names_tex, 'crdy');
M_.param_names_long = char(M_.param_names_long, 'crdy');
M_.param_names = char(M_.param_names, 'cry');
M_.param_names_tex = char(M_.param_names_tex, 'cry');
M_.param_names_long = char(M_.param_names_long, 'cry');
M_.param_names = char(M_.param_names, 'crr');
M_.param_names_tex = char(M_.param_names_tex, 'crr');
M_.param_names_long = char(M_.param_names_long, 'crr');
M_.param_names = char(M_.param_names, 'crhoa');
M_.param_names_tex = char(M_.param_names_tex, 'crhoa');
M_.param_names_long = char(M_.param_names_long, 'crhoa');
M_.param_names = char(M_.param_names, 'crhob');
M_.param_names_tex = char(M_.param_names_tex, 'crhob');
M_.param_names_long = char(M_.param_names_long, 'crhob');
M_.param_names = char(M_.param_names, 'crhog');
M_.param_names_tex = char(M_.param_names_tex, 'crhog');
M_.param_names_long = char(M_.param_names_long, 'crhog');
M_.param_names = char(M_.param_names, 'crhoqs');
M_.param_names_tex = char(M_.param_names_tex, 'crhoqs');
M_.param_names_long = char(M_.param_names_long, 'crhoqs');
M_.param_names = char(M_.param_names, 'crhoms');
M_.param_names_tex = char(M_.param_names_tex, 'crhoms');
M_.param_names_long = char(M_.param_names_long, 'crhoms');
M_.param_names = char(M_.param_names, 'crhopinf');
M_.param_names_tex = char(M_.param_names_tex, 'crhopinf');
M_.param_names_long = char(M_.param_names_long, 'crhopinf');
M_.param_names = char(M_.param_names, 'crhow');
M_.param_names_tex = char(M_.param_names_tex, 'crhow');
M_.param_names_long = char(M_.param_names_long, 'crhow');
M_.param_names = char(M_.param_names, 'ctrend');
M_.param_names_tex = char(M_.param_names_tex, 'ctrend');
M_.param_names_long = char(M_.param_names_long, 'ctrend');
M_.param_names = char(M_.param_names, 'cg');
M_.param_names_tex = char(M_.param_names_tex, 'cg');
M_.param_names_long = char(M_.param_names_long, 'cg');
M_.param_names = char(M_.param_names, 'cgamma');
M_.param_names_tex = char(M_.param_names_tex, 'cgamma');
M_.param_names_long = char(M_.param_names_long, 'cgamma');
M_.param_names = char(M_.param_names, 'clandap');
M_.param_names_tex = char(M_.param_names_tex, 'clandap');
M_.param_names_long = char(M_.param_names_long, 'clandap');
M_.param_names = char(M_.param_names, 'cbetabar');
M_.param_names_tex = char(M_.param_names_tex, 'cbetabar');
M_.param_names_long = char(M_.param_names_long, 'cbetabar');
M_.param_names = char(M_.param_names, 'cr');
M_.param_names_tex = char(M_.param_names_tex, 'cr');
M_.param_names_long = char(M_.param_names_long, 'cr');
M_.param_names = char(M_.param_names, 'cpie');
M_.param_names_tex = char(M_.param_names_tex, 'cpie');
M_.param_names_long = char(M_.param_names_long, 'cpie');
M_.param_names = char(M_.param_names, 'crk');
M_.param_names_tex = char(M_.param_names_tex, 'crk');
M_.param_names_long = char(M_.param_names_long, 'crk');
M_.param_names = char(M_.param_names, 'cw');
M_.param_names_tex = char(M_.param_names_tex, 'cw');
M_.param_names_long = char(M_.param_names_long, 'cw');
M_.param_names = char(M_.param_names, 'cikbar');
M_.param_names_tex = char(M_.param_names_tex, 'cikbar');
M_.param_names_long = char(M_.param_names_long, 'cikbar');
M_.param_names = char(M_.param_names, 'cik');
M_.param_names_tex = char(M_.param_names_tex, 'cik');
M_.param_names_long = char(M_.param_names_long, 'cik');
M_.param_names = char(M_.param_names, 'clk');
M_.param_names_tex = char(M_.param_names_tex, 'clk');
M_.param_names_long = char(M_.param_names_long, 'clk');
M_.param_names = char(M_.param_names, 'cky');
M_.param_names_tex = char(M_.param_names_tex, 'cky');
M_.param_names_long = char(M_.param_names_long, 'cky');
M_.param_names = char(M_.param_names, 'ciy');
M_.param_names_tex = char(M_.param_names_tex, 'ciy');
M_.param_names_long = char(M_.param_names_long, 'ciy');
M_.param_names = char(M_.param_names, 'ccy');
M_.param_names_tex = char(M_.param_names_tex, 'ccy');
M_.param_names_long = char(M_.param_names_long, 'ccy');
M_.param_names = char(M_.param_names, 'crkky');
M_.param_names_tex = char(M_.param_names_tex, 'crkky');
M_.param_names_long = char(M_.param_names_long, 'crkky');
M_.param_names = char(M_.param_names, 'cwhlc');
M_.param_names_tex = char(M_.param_names_tex, 'cwhlc');
M_.param_names_long = char(M_.param_names_long, 'cwhlc');
M_.param_names = char(M_.param_names, 'cwly');
M_.param_names_tex = char(M_.param_names_tex, 'cwly');
M_.param_names_long = char(M_.param_names_long, 'cwly');
M_.param_names = char(M_.param_names, 'conster');
M_.param_names_tex = char(M_.param_names_tex, 'conster');
M_.param_names_long = char(M_.param_names_long, 'conster');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 8;
M_.endo_nbr = 44;
M_.param_nbr = 89;
M_.orig_endo_nbr = 44;
M_.aux_vars = [];
M_.Sigma_e = zeros(8, 8);
M_.Correlation_matrix = eye(8, 8);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('US_SW07AL_static');
erase_compiled_function('US_SW07AL_dynamic');
M_.orig_eq_nbr = 44;
M_.eq_nbr = 44;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 1 24 0;
 2 25 0;
 0 26 0;
 0 27 68;
 0 28 0;
 0 29 69;
 3 30 70;
 4 31 71;
 0 32 0;
 0 33 72;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 73;
 0 39 0;
 0 40 74;
 5 41 75;
 6 42 76;
 0 43 0;
 0 44 77;
 7 45 78;
 8 46 79;
 0 47 0;
 9 48 0;
 10 49 0;
 11 50 0;
 12 51 0;
 13 52 0;
 14 53 0;
 15 54 0;
 16 55 0;
 17 56 0;
 0 57 0;
 0 58 0;
 18 59 0;
 0 60 0;
 19 61 80;
 20 62 0;
 21 63 0;
 0 64 0;
 22 65 0;
 23 66 0;
 0 67 0;]';
M_.nstatic = 15;
M_.nfwrd   = 6;
M_.npred   = 16;
M_.nboth   = 7;
M_.nsfwrd   = 13;
M_.nspred   = 23;
M_.ndynamic   = 29;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:8];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(44, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(8, 1);
M_.params = NaN(89, 1);
M_.NNZDerivatives = [173; 0; -1];
M_.params( 47 ) = .025;
ctou = M_.params( 47 );
M_.params( 58 ) = 1.5;
clandaw = M_.params( 58 );
M_.params( 72 ) = 0.18;
cg = M_.params( 72 );
M_.params( 37 ) = 10;
curvp = M_.params( 37 );
M_.params( 35 ) = 10;
curvw = M_.params( 35 );
M_.params( 71 ) = 0.4312;
ctrend = M_.params( 71 );
M_.params( 73 ) = 1+M_.params(71)/100;
cgamma = M_.params( 73 );
M_.params( 40 ) = 0.1657;
constebeta = M_.params( 40 );
M_.params( 45 ) = 100/(100+M_.params(40));
cbeta = M_.params( 45 );
M_.params( 39 ) = 0.7869;
constepinf = M_.params( 39 );
M_.params( 77 ) = 1+M_.params(39)/100;
cpie = M_.params( 77 );
M_.params( 38 ) = 0.5509;
constelab = M_.params( 38 );
M_.params( 43 ) = 0.1901;
calfa = M_.params( 43 );
M_.params( 48 ) = 1.3808;
csigma = M_.params( 48 );
M_.params( 52 ) = 1.6064;
cfc = M_.params( 52 );
M_.params( 36 ) = 0.5187;
cgy = M_.params( 36 );
M_.params( 46 ) = 5.7606;
csadjcost = M_.params( 46 );
M_.params( 49 ) = 0.7133;
chabb = M_.params( 49 );
M_.params( 54 ) = 0.7061;
cprobw = M_.params( 54 );
M_.params( 57 ) = 1.8383;
csigl = M_.params( 57 );
M_.params( 56 ) = 0.6523;
cprobp = M_.params( 56 );
M_.params( 53 ) = 0.5845;
cindw = M_.params( 53 );
M_.params( 55 ) = 0.2432;
cindp = M_.params( 55 );
M_.params( 44 ) = 0.5462;
czcap = M_.params( 44 );
M_.params( 60 ) = 2.0443;
crpi = M_.params( 60 );
M_.params( 63 ) = 0.8103;
crr = M_.params( 63 );
M_.params( 62 ) = 0.0882;
cry = M_.params( 62 );
M_.params( 61 ) = 0.2247;
crdy = M_.params( 61 );
M_.params( 64 ) = 0.9577;
crhoa = M_.params( 64 );
M_.params( 65 ) = 0.2194;
crhob = M_.params( 65 );
M_.params( 66 ) = 0.9767;
crhog = M_.params( 66 );
M_.params( 67 ) = 0.7113;
crhoqs = M_.params( 67 );
M_.params( 68 ) = 0.1479;
crhoms = M_.params( 68 );
M_.params( 69 ) = 0.8895;
crhopinf = M_.params( 69 );
M_.params( 70 ) = 0.9688;
crhow = M_.params( 70 );
M_.params( 42 ) = 0.7010;
cmap = M_.params( 42 );
M_.params( 41 ) = 0.8503;
cmaw = M_.params( 41 );
M_.params( 74 ) = M_.params(52);
clandap = M_.params( 74 );
M_.params( 75 ) = M_.params(45)*M_.params(73)^(-M_.params(48));
cbetabar = M_.params( 75 );
M_.params( 76 ) = M_.params(77)/(M_.params(45)*M_.params(73)^(-M_.params(48)));
cr = M_.params( 76 );
M_.params( 78 ) = M_.params(45)^(-1)*M_.params(73)^M_.params(48)-(1-M_.params(47));
crk = M_.params( 78 );
M_.params( 79 ) = (M_.params(43)^M_.params(43)*(1-M_.params(43))^(1-M_.params(43))/(M_.params(74)*M_.params(78)^M_.params(43)))^(1/(1-M_.params(43)));
cw = M_.params( 79 );
M_.params( 80 ) = 1-(1-M_.params(47))/M_.params(73);
cikbar = M_.params( 80 );
M_.params( 81 ) = M_.params(73)*(1-(1-M_.params(47))/M_.params(73));
cik = M_.params( 81 );
M_.params( 82 ) = (1-M_.params(43))/M_.params(43)*M_.params(78)/M_.params(79);
clk = M_.params( 82 );
M_.params( 83 ) = M_.params(52)*M_.params(82)^(M_.params(43)-1);
cky = M_.params( 83 );
M_.params( 84 ) = M_.params(81)*M_.params(83);
ciy = M_.params( 84 );
M_.params( 85 ) = 1-M_.params(72)-M_.params(81)*M_.params(83);
ccy = M_.params( 85 );
M_.params( 86 ) = M_.params(78)*M_.params(83);
crkky = M_.params( 86 );
M_.params( 87 ) = M_.params(83)*M_.params(78)*(1-M_.params(43))*1/M_.params(58)/M_.params(43)/M_.params(85);
cwhlc = M_.params( 87 );
M_.params( 88 ) = 1-M_.params(78)*M_.params(83);
cwly = M_.params( 88 );
M_.params( 89 ) = 100*(M_.params(76)-1);
conster = M_.params( 89 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);                                                            
M_.params( 34 ) = 1;
coffispol = M_.params( 34 );
AL_Info.forwards =     {'c','cf','inve','invef','lab','labf','pinf','inflationq','pk','pkf','rk','rkf','w'};
AL_Info.states_long  = {'c','cf','inve','invef','kp','kpf','inflationq','inflationqls','w','a','b','epinfma','ewma','g','qs','spinf','sw','interest'};
AL_Info.states_short = {'c','cf','inve','invef','kp','kpf','inflationq','w','a','b','epinfma','ewma','g','qs','spinf','sw','interest'};
save AL_Info AL_Info 
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.4582)^2;
M_.Sigma_e(2, 2) = (0.2400)^2;
M_.Sigma_e(3, 3) = (0.4526)^2;
M_.Sigma_e(4, 4) = (0.2449)^2;
M_.Sigma_e(5, 5) = (0.1410)^2;
M_.Sigma_e(6, 6) = (0.2446)^2;
M_.Sigma_e(8, 8) = (0.5291)^2;
save('US_SW07AL_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('US_SW07AL_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('US_SW07AL_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('US_SW07AL_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('US_SW07AL_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('US_SW07AL_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('US_SW07AL_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
