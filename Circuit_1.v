     	module Circuit_1 (A, B, C, F1, F2);
     	output F1, F2; 
     	input A, B, C;
     	wire T1, T2, T3, w1, w2, w3, w4; 
     	
     	and top1 (T2, A, B, C);
     	or top2 (T1, A, B, C); 
     	
     	and low1 (w1, A, B);
    	and low2 (w2, A, C); 
    	and low3 (w3, B, C);
    	
    	or low4 (F2, w1, w2, w3); 
    	
  	not move (w4, F2);
    	
   	and top3 (T3, T1, w4);
    	or top4 (F1, T2, T3);
   	
    	endmodule
