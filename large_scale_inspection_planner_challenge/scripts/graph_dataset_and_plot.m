clear; close all; clc

# "pylons_position" describes the (x,y) points of the electric towers (or pylons) of the complete electric graph, being the two columns the (x,y) coordinates and the rows different pylon elements.
# "pylons_position_geo" is just the same but in geographic coordinates (latitude, longitude).
# The vector of vectors "connection_indexes" must have the same number of rows as "pylons_position" and represents the wire connections among electric towers. ATTENTION: indexes start at 1, so you may want to rest 1 at parsing to start by 0 (C++ or Python).

pylons_position = [-4222.451 -2178.619;
-4132.362 -2178.62;
-4030.025 -631.153;
-4029.286 -641.126;
-4028.026 -658.153;
-4025.595 -744.627;
-3963.448 -2283.725;
-3950.727 -632.099;
-3838.8 -636.781;
-3731.743 -641.908;
-3631.206 -642.7;
-3586.001 -2029.255;
-3511.51 -644.344;
-3479.855 -1974.146;
-3462.443 -1903.775;
-3428.446 -1903.266;
-3418.447 -1903.116;
-3407.693 -645.406;
-3400.896 -1913.6;
-3374.302 -1793.215;
-3357.904 -1627.72;
-3332.604 32.362;
-3320.149 -1659.561;
-3310.604 -50.636;
-3308.929 -1646.654;
-3283.124 -653.128;
-3272.605 -208.633;
-3227.606 -423.631;
-3186.606 -620.629;
-3179.606 -645.629;
-3150.371 -1629.036;
-3059.884 -645.267;
-3002.203 -1618.081;
-2941.412 -655.502;
-2893.974 -1597.396;
-2833.139 -652.684;
-2772.622 -1580.566;
-2727.436 -662.57;
-2657.582 -669.005;
-2637.853 -1568.319;
-2515.411 -683.495;
-2493.476 -1561.155;
-2450.644 -683.145;
-2449.14 -685.374;
-2448.073 -660.457;
-2399.065 -1549.254;
-2395.128 -604.979;
-2385.874 -1511.312;
-2372.988 -1445.972;
-2362.378 -697.961;
-2344.289 -1360.288;
-2326.189 -1259.26;
-2289.802 -1148.681;
-2274.393 -1083.768;
-2256.166 -703.33;
-2236.082 -947.377;
-2214.664 -873.946;
-2184.567 -713.625;
-2184.477 -726.603;
-2168.496 -920.5;
-2148.897 -1040.636;
-2119.091 -1240.634;
-2095.076 -733.158;
-2094.589 -730.198;
-2093.103 -721.169;
-2038.547 -1347.157;
-2026.709 -674.771;
-1992.377 -653.073;
-1961.076 -1458.349;
-1899.613 -629.023;
-1874.124 -1606.555;
-1867.833 -1598.355;
-1764.195 -587.707;
-1755.219 -1697.212;
-1665.657 -555.446;
-1663.634 -562.797;
-1606.724 -1785.8;
-1523.514 -516.546;
-1493.935 -1882.216;
-1456.758 -1858.442;
-1430.835 -492.496;
-1325.945 -469.053;
-1314.445 -1935.237;
-1304.038 -1918.157;
-1219.436 -445.978;
-1189.809 -152.514;
-1164.946 -1955.25;
-1111.243 -395.872;
-1107.013 -421.726;
-1019.38 -1973.884;
-887.529 -366.336;
-886.759 -375.461;
-871.444 -1991.265;
-766.971 -339.191;
-738.037 -358.049;
-733.149 -2007.442;
-694.034 -389.265;
-632.872 -319.215;
-626.517 -283.636;
-604.243 -227.165;
-544.652 -296.433;
-503.435 -1927.461;
-503.375 -157.511;
-492.757 -240.601;
-490.135 -216.032;
-483.33 -1956.11;
-458.088 -2000.425;
-414.730 -300.875;
-411.926 -300.971;
-392.998 -203.197;
-301.307 -167.065;
-244.415 -289.984;
-208.054 -131.734;
-118.766 -97.603;
-33.345 -276.977;
-28.632 -63.169;
62.321 -28.535;
63.307 -22.373;
65.474 -27.455;
119.581 -383.281;
162.857 5.807;
252.635 36.813;
274.539 -492.566;
301.032 -1121.299;
350.383 70.164;
359.693 -926.302;
375.963 -1183.528;
385.329 -841.918;
446.78 102.711;
450.962 -628.951;
465.386 -626.631;
492.003 -625.948;
493.88 -1403.2;
498.389 -1595.913;
505.381 -1773.974;
543.199 136.867;
592.242 -1873.89;
623.921 -769.028;
641.646 169.929;
699.429 219.137;
707.235 222.522;
744.718 -876.477;
756.432 103.136;
763.612 106.665;
853.156 -975.716;
940.7 313.708;
948.06 295.097;
979.015 337.163;
1000.846 -612.24;
1069.7 382.68;
1123.263 428.908;
1130.372 411.104;
1179.123 -1248.605;
1245.51 -1131.273;
1268.959 -1306.776;];



connection_indexes = [ { [2] }
{ [1 7] }
{ [4 8] }
{ [5 3] }
{ [4 6] }
{ [5] }
{ [2 12] }
{ [9 3] }
{ [10 8] }
{ [11 9] }
{ [13 10] }
{ [15 7] }
{ [18 11] }
{ [17] }
{ [12 16] }
{ [15 17] }
{ [20 16 14 19] }
{ [26 13] }
{ [17] }
{ [23 17] }
{ [25] }
{ [24] }
{ [25 20] }
{ [22 27] }
{ [23 21 31] }
{ [30 18] }
{ [24 28] }
{ [27 29] }
{ [30 28] }
{ [32 29 26] }
{ [25 33] }
{ [34 30] }
{ [31 35] }
{ [36 32] }
{ [33 37] }
{ [38 34] }
{ [35 40] }
{ [39 36] }
{ [41 38] }
{ [37 42] }
{ [43 39] }
{ [40 46] }
{ [41 45 44] }
{ [43 50] }
{ [47 43] }
{ [42 48] }
{ [45] }
{ [49 46] }
{ [51 48] }
{ [44 55] }
{ [52 49] }
{ [53 51] }
{ [54 52] }
{ [56 53] }
{ [50 58] }
{ [57 54] }
{ [59 56] }
{ [59 68 55] }
{ [58 57] }
{ [61 63] }
{ [62 60] }
{ [66 61] }
{ [60 67 64] }
{ [65 63] }
{ [64] }
{ [69 62] }
{ [63 68] }
{ [67 58 70] }
{ [72 66] }
{ [73 68] }
{ [72] }
{ [74 71 69] }
{ [75 70] }
{ [77 72] }
{ [76 73] }
{ [78 75] }
{ [74 80] }
{ [81 76] }
{ [80] }
{ [77 83 79] }
{ [82 78] }
{ [81 85] }
{ [87 84 80] }
{ [83] }
{ [82 89] }
{ [88] }
{ [83 90] }
{ [86 89] }
{ [85 92 88] }
{ [87 93] }
{ [92] }
{ [91 89 94] }
{ [90 96] }
{ [95 92 98] }
{ [94 97] }
{ [93 102] }
{ [95] }
{ [99 101 94] }
{ [98 100 104] }
{ [99] }
{ [108 98] }
{ [106 96] }
{ [105] }
{ [105 110 99] }
{ [104 103] }
{ [107 102] }
{ [106] }
{ [101 109] }
{ [108 112] }
{ [104 111] }
{ [110 113] }
{ [109 115] }
{ [111 114] }
{ [113 116] }
{ [112 120] }
{ [114 117] }
{ [116 119] }
{ [119] }
{ [118 121 117] }
{ [115 123] }
{ [122 119] }
{ [125 121] }
{ [120 131] }
{ [126 127] }
{ [129 122] }
{ [128 124] }
{ [133 124] }
{ [130 126] }
{ [136 125] }
{ [128 131] }
{ [132 138 123 130] }
{ [149 131] }
{ [134 127] }
{ [135 133] }
{ [137 134] }
{ [139 129] }
{ [135] }
{ [131 142] }
{ [140 136] }
{ [139 143 141] }
{ [144 146 140] }
{ [138 145] }
{ [140] }
{ [141] }
{ [142 153] }
{ [148 141 147] }
{ [146] }
{ [150 146] }
{ [132] }
{ [152 148] }
{ [152] }
{ [151 150] }
{ [154 155 145] }
{ [153] }
{ [153] } ];



# Plot the graph:
hold on
[N_connections,~] = size(connection_indexes);
for it_1=1:N_connections
  [~,N_connections_current] = size(connection_indexes{it_1});
  for it_2=1:N_connections_current
    x=[pylons_position(it_1,1) pylons_position(connection_indexes{it_1}(1,it_2),1)];
    y=[pylons_position(it_1,2) pylons_position(connection_indexes{it_1}(1,it_2),2)];
    plot(x, y, '-r');
    text (x(1,1), y(1,1), mat2str(it_1));
    text (x(1,2), y(1,2), mat2str(connection_indexes{it_1}(1,it_2)));
  end
end
hold off



pylons_position_geo = [38.119002 -3.221949;
38.119004 -3.220921;
38.132953 -3.219796;
38.132863 -3.219787;
38.132710 -3.219772;
38.131930 -3.219742;
38.118060 -3.218992;
38.132946 -3.218891;
38.132906 -3.217614;
38.132862 -3.216392;
38.132857 -3.215245;
38.120362 -3.214692;
38.132845 -3.213879;
38.120861 -3.213483;
38.121495 -3.213286;
38.121501 -3.212898;
38.121502 -3.212784;
38.132838 -3.212694;
38.121408 -3.212584;
38.122494 -3.212283;
38.123985 -3.212101;
38.138948 -3.211855;
38.123699 -3.211669;
38.138200 -3.211602;
38.123816 -3.211541;
38.132771 -3.211273;
38.136777 -3.211164;
38.134840 -3.210645;
38.133066 -3.210172;
38.132840 -3.210092;
38.123978 -3.209733;
38.132846 -3.208726;
38.124080 -3.208043;
38.132756 -3.207374;
38.124268 -3.206808;
38.132784 -3.206138;
38.124422 -3.205424;
38.132697 -3.204932;
38.132640 -3.204135;
38.124535 -3.203887;
38.132512 -3.202512;
38.124603 -3.202240;
38.132517 -3.201773;
38.132497 -3.201756;
38.132721 -3.201744;
38.124712 -3.201163;
38.133222 -3.201142;
38.125054 -3.201014;
38.125643 -3.200868;
38.132385 -3.200766;
38.126416 -3.200543;
38.127327 -3.200339;
38.128324 -3.199926;
38.128910 -3.199752;
38.132339 -3.199554;
38.130140 -3.199318;
38.130802 -3.199076;
38.132247 -3.198736;
38.132130 -3.198735;
38.130383 -3.198548;
38.129301 -3.198321;
38.127499 -3.197976;
38.132073 -3.197715;
38.132100 -3.197709;
38.132181 -3.197692;
38.126540 -3.197055;
38.132601 -3.196936;
38.132797 -3.196545;
38.125540 -3.196168;
38.133015 -3.195487;
38.124206 -3.195173;
38.124280 -3.195101;
38.133390 -3.193943;
38.123391 -3.193814;
38.133683 -3.192819;
38.133617 -3.192796;
38.122595 -3.192118;
38.134036 -3.191198;
38.121728 -3.190829;
38.121943 -3.190405;
38.134254 -3.190141;
38.134468 -3.188945;
38.121254 -3.188780;
38.121408 -3.188661;
38.134678 -3.187730;
38.137323 -3.187399;
38.121076 -3.187074;
38.135131 -3.186497;
38.134898 -3.186448;
38.120911 -3.185412;
38.135401 -3.183945;
38.135319 -3.183936;
38.120757 -3.183724;
38.135648 -3.182569;
38.135479 -3.182239;
38.120613 -3.182146;
38.135198 -3.181736;
38.135831 -3.181040;
38.136151 -3.180968;
38.136661 -3.180715;
38.136037 -3.180034;
38.121338 -3.179527;
38.137290 -3.179566;
38.136542 -3.179443;
38.136763 -3.179413;
38.121080 -3.179297;
38.120681 -3.179008;
38.136000 -3.178551;
38.135999 -3.178519;
38.136880 -3.178305;
38.137208 -3.177260;
38.136101 -3.176608;
38.137528 -3.176196;
38.137837 -3.175178;
38.136222 -3.174199;
38.138149 -3.174150;
38.138462 -3.173113;
38.138518 -3.173102;
38.138472 -3.173077;
38.135266 -3.172452;
38.138774 -3.171967;
38.139054 -3.170943;
38.134284 -3.170682;
38.128618 -3.170366;
38.139357 -3.169828;
38.130376 -3.169701;
38.128058 -3.169510;
38.131137 -3.169410;
38.139652 -3.168729;
38.133057 -3.168666;
38.133079 -3.168501;
38.133085 -3.168198;
38.126080 -3.168160;
38.124343 -3.168105;
38.122739 -3.168021;
38.139961 -3.167629;
38.121840 -3.167028;
38.131798 -3.166689;
38.140261 -3.166506;
38.140705 -3.165848;
38.140736 -3.165759;
38.130831 -3.165309;
38.139660 -3.165195;
38.139692 -3.165113;
38.129939 -3.164070;
38.141561 -3.163097;
38.141394 -3.163012;
38.141773 -3.162660;
38.133217 -3.162392;
38.142185 -3.161626;
38.142602 -3.161015;
38.142442 -3.160934;
38.127484 -3.160345;
38.128543 -3.159590;
38.126961 -3.159319;];