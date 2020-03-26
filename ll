close all;
	clearvars;
	

	
	d = linspace(1,1000,100);
	

	
	p3gpp_shu = zeros(length(d),1);
	pnyu_shu = zeros(length(d),1);
	pinvexp_shu = zeros(length(d),1);
	

	for ii = 1:length(d)
	    
	    p3gpp_shu(ii) = min([49/d(ii),1]) * (1 - exp(-d(ii)/1)) + exp((-d(ii)/1));
	



	    pnyu_shu(ii) = (min([0/d(ii),1]) * (1 - exp(-d(ii)/395)) + exp((-d(ii)/395)))^2;
	



	    pinvexp_shu(ii) = 1 / ( 1 + exp( .0054 .* (d(ii) - 97) ) );
	

	end
	


	figure; 
	hold on; box on;
	    
	plot(d,p3gpp_shu,'-','LineWidth',1);
	plot(d,pnyu_shu,'--','LineWidth',1);
	plot(d,pinvexp_shu,'-.','LineWidth',1);
	

	xlabel('Distance [m]');
	ylabel('LoS probability');
	

	legend('3GPP [3]','NYU [3]','Inverse exponential [3]','Location','NorthEast');
