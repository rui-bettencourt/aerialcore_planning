clear; close all; clc
format long g

graph = [-409.120 449.015 2 0 0 0;
-430.169 276.424 1 3 0 0;
-450.540 108.275 2 4 0 0;
-470.078 -41.682 3 5 0 0;
-490.208 -215.834 4 6 0 0;
-492.875 -240.864 5 7 18 0;
-598.496 -281.095 6 8 0 0;
-633.009 -319.444 7 9 11 12;
-627.564 -283.028 8 10 0 0;
-611.221 -232.533 9 0 0 0;
-756.512 -346.437 8 0 0 0;
-544.794 -296.507 8 13 0 0;
-413.182 -301.398 12 14 0 0;
-244.429 -290.325 13 15 0 0;
-32.435 -276.509 14 16 0 0;
119.719 -383.291 15 17 0 0;
276.420 -493.459 16 0 0 0;
-391.957 -202.912 6 19 0 0;
-301.302 -167.188 18 20 0 0;
-208.036 -131.632 19 21 0 0;
-118.176 -97.355 20 22 0 0;
-28.178 -63.028 21 23 0 0;
65.174 -27.481 22 24 25 0;
62.631 -21.742 23 0 0 0;
163.171 6.176 23 26 0 0;
252.476 37.164 25 27 0 0;
351.502 70.480 26 28 0 0;
447.289 103.004 27 29 0 0;
543.828 136.838 28 30 0 0;
641.898 170.080 29 31 0 0;
719.770 208.398 30 32 33 0;
769.668 108.103 31 0 0 0;
894.348 293.824 31 0 0 0;];

[M,N] = size(graph);

wires=[0 0 0 0 0 0 0];
wires_count = 1;

for it_i=1:M
  for it_j=3:N
    if (graph(it_i,it_j)==0)
      break;
    else
      wires(wires_count,:) = [(graph(it_i,1)+graph(graph(it_i,it_j),1))/2 (graph(it_i,2)+graph(graph(it_i,it_j),2))/2 12 1.570796327 0 pi/2+atan2((graph(it_i,2)-graph(graph(it_i,it_j),2)),(graph(it_i,1)-graph(graph(it_i,it_j),1))) sqrt((graph(it_i,1)-graph(graph(it_i,it_j),1))^2+(graph(it_i,2)-graph(graph(it_i,it_j),2))^2)];
      wires_count = wires_count+1;
    end
  end
end

wires
