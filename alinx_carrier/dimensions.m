clear;
format long;

edge_x1 = 678.80;
edge_x2 = 3828.40;

edge_y1 = 508.87;
edge_y2 = 2871.07;

j1_x = 826.92;
j1_y = 1690.68;

j2_x = 2214.11;
j2_y = 2722.95;

j3_x = 2214.11;
j3_y = 656.98;

j4_x = 3680.28;
j4_y = 1690.68;


xdim_mm = 25.4*(edge_x2-edge_x1)/1000
ydim_mm = 25.4*(edge_y2-edge_y1)/1000

% connector placement computed from origin at top left corner

j1_xpos_mm = 25.4*(j1_x - edge_x1)/1000
j1_ypos_mm = 25.4*(edge_y2 - j1_y)/1000

j2_xpos_mm = 25.4*(j2_x - edge_x1)/1000
j2_ypos_mm = 25.4*(edge_y2 - j2_y)/1000

j3_xpos_mm = 25.4*(j3_x - edge_x1)/1000
j3_ypos_mm = 25.4*(edge_y2 - j3_y)/1000

j4_xpos_mm = 25.4*(j4_x - edge_x1)/1000
j4_ypos_mm = 25.4*(edge_y2 - j4_y)/1000