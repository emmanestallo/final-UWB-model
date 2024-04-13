t = 0:1/1000e+9:4e-9;
[kern,a,b] = gaussianPulseGenerator(8e+9); 


desired_time_step = 125e-12; 
desired_indices = find(rem(t, desired_time_step)==0);

desired_time_values = t(desired_indices);
desired_gauss_values = kern(desired_indices);

router_dec = ceil(desired_gauss_values)-1; 
router_bin = dec2bin(router_dec, 4);

setting = router_bin;
