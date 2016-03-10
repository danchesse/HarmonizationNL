#This is adapted from the NAPLS2 paradigm, but it only
#includes long duration deviants (p = .10) and target 
#blue circles (p = .20)
 
scenario = "nvMMNa_naplsHarmonization_03172015blue"; 
#attenuation updated for ER1 insert earphones and X-fi gamer card
pcl_file = "nvMMNCommands.pcl";
scenario_type = trials	; 
write_codes = true	;
response_matching = simple_matching	;
active_buttons = 2;
button_codes = 101, 10;
target_button_codes = 2,11;
pulse_width = 1	;
default_trial_type = fixed	;       
default_background_color = 255,255,255	;
 
begin	;               

#silence tone placeholder
sound{ wavefile {filename = "633standard.wav"	;}	; attenuation = 1	;} silence	;
#standard tone (50ms 1000Hz, 10ms rise/fall)
sound{ wavefile {filename = "1000Fdeviant.wav"	;}	; attenuation = 0.283	;} s	;
#Long duration Deviant (100ms 1000Hz, 10ms rise/fall)
sound{ wavefile {filename = "1000dfDeviant.wav"	;}	; attenuation = 0.283	;} Dd	;

picture {   
      bitmap { filename = "default.png"; 
      width = 1024;
      height = 768;};                
      x = 0; y = 0; } default;


# location and name of the stimuli to be used in the experiment
bitmap {filename = "T.png";} Targ;
bitmap {filename = "F.png";} Freq;

#T is for target
picture {
		bitmap Targ;
		x = 0; y = 0;		
}T;

#F is for frequent (or Fstandard, where the f is silent)
picture {
		bitmap Freq;
		x = 0; y = 0;		
}F;

trial {
	stimulus_event {
	picture{text { caption = "3"	; 
               	font_size = 48	;
               	font_color = 0,0,0	;}	;
		x = 0	; y = 0	;}	;
        time=0	;
	   duration = 1500	;
        code = "83"	;
     	}	;

	stimulus_event {
	picture{text { caption = "2"	; 
                font_size = 48	;
                font_color = 0,0,0	;}	;
          	x = 0	; y = 0	;}	;
	time = 2000	; 
	duration = 1500	;
	code = "82"	;
       	}	;  
       
	stimulus_event {
	picture{text { caption = "1"	; 
                font_size = 48	;
                font_color = 0,0,0	;}	;
           	x = 0	; y = 0	;}	;
         time = 4000	; 
         duration = 1500	;
         code = "81"	; 
         port_code = 128	;
         }	;        
}	;


TEMPLATE "nvMMN.tem" {   
#pic	word	picPort	wordPort	targResp	picTime	wrdTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port	snd5	s5Port	snd6	s6Port ;	
pic	picPort	targResp	picTime	snd1	s1Port	snd2	s2Port	snd3	s3Port	snd4	s4Port;
F	50	2	407	s	1	s	1	s	1	s	1	;
T	100	2	453	s	1	s	1	s	1	s	1	;
F	50	2	63	s	1	s	1	s	1	s	1	;
F	50	2	457	s	1	s	1	s	1	Dd	3	;
F	50	2	316	s	1	s	1	s	1	s	1	;
F	50	2	49	s	1	Dd	3	s	1	s	1	;
T	100	1	139	s	1	s	1	s	1	s	1	;
F	50	2	273	Dd	3	s	1	s	1	s	1	;
F	50	2	479	s	1	s	1	s	1	Dd	3	;
F	50	2	482	s	1	s	1	s	1	s	1	;
F	50	2	79	s	1	s	1	s	1	s	1	;
F	50	2	485	Dd	3	s	1	s	1	s	1	;
T	100	1	479	s	1	s	1	s	1	s	1	;
F	50	2	243	s	1	Dd	3	s	1	s	1	;
F	50	2	400	s	1	s	1	s	1	s	1	;
F	50	2	71	s	1	s	1	s	1	Dd	3	;
T	100	2	211	s	1	s	1	s	1	s	1	;
F	50	2	458	Dd	3	s	1	s	1	s	1	;
F	50	2	396	s	1	s	1	Dd	3	s	1	;
F	50	2	480	Dd	3	s	1	Dd	3	s	1	;
F	50	2	328	s	1	s	1	s	1	s	1	;
F	50	2	18	Dd	3	s	1	s	1	s	1	;
F	50	2	425	s	1	s	1	s	1	s	1	;
T	100	2	467	s	1	s	1	Dd	3	s	1	;
F	50	2	339	s	1	s	1	s	1	s	1	;
F	50	2	379	s	1	s	1	Dd	3	s	1	;
T	100	1	372	s	1	s	1	s	1	Dd	3	;
F	50	2	196	s	1	s	1	s	1	s	1	;
F	50	2	328	s	1	Dd	3	s	1	s	1	;
F	50	2	86	s	1	s	1	s	1	s	1	;
F	50	2	353	Dd	3	s	1	s	1	s	1	;
F	50	2	16	Dd	3	s	1	s	1	s	1	;
F	50	2	138	s	1	s	1	s	1	s	1	;
T	100	1	23	Dd	3	s	1	s	1	s	1	;
F	50	2	49	s	1	Dd	3	s	1	s	1	;
F	50	2	412	s	1	s	1	s	1	s	1	;
T	100	1	347	s	1	s	1	s	1	s	1	;
F	50	2	159	s	1	s	1	s	1	s	1	;
F	50	2	475	s	1	s	1	s	1	s	1	;
F	50	2	17	s	1	s	1	s	1	s	1	;
F	50	2	219	s	1	s	1	s	1	s	1	;
F	50	2	191	s	1	s	1	s	1	s	1	;
F	50	2	383	s	1	s	1	s	1	s	1	;
T	100	1	398	s	1	s	1	s	1	s	1	;
F	50	2	93	Dd	3	s	1	s	1	s	1	;
F	50	2	245	Dd	3	s	1	Dd	3	s	1	;
F	50	2	223	s	1	s	1	s	1	s	1	;
F	50	2	323	s	1	s	1	s	1	s	1	;
T	100	2	355	s	1	s	1	s	1	s	1	;
F	50	2	377	s	1	s	1	s	1	Dd	3	;
F	50	2	138	s	1	s	1	s	1	s	1	;
T	100	1	340	s	1	s	1	s	1	s	1	;
F	50	2	328	s	1	s	1	s	1	s	1	;
F	50	2	81	s	1	Dd	3	s	1	s	1	;
F	50	2	59	s	1	s	1	Dd	3	s	1	;
T	100	2	249	s	1	s	1	s	1	Dd	3	;
F	50	2	480	s	1	s	1	s	1	s	1	;
F	50	2	170	s	1	s	1	s	1	s	1	;
F	50	2	293	s	1	s	1	Dd	3	s	1	;
F	50	2	112	s	1	s	1	s	1	s	1	;
F	50	2	376	s	1	s	1	s	1	Dd	3	;
F	50	2	128	s	1	s	1	s	1	s	1	;
F	50	2	253	Dd	3	s	1	s	1	s	1	;
T	100	1	350	s	1	Dd	3	s	1	s	1	;
F	50	2	445	s	1	s	1	s	1	s	1	;
T	100	2	480	s	1	s	1	s	1	s	1	;
F	50	2	274	Dd	3	s	1	s	1	s	1	;
T	100	1	69	s	1	s	1	s	1	s	1	;
F	50	2	75	s	1	s	1	s	1	Dd	3	;
F	50	2	129	s	1	s	1	s	1	s	1	;
F	50	2	420	s	1	s	1	s	1	s	1	;
F	50	2	127	s	1	s	1	s	1	s	1	;
F	50	2	407	s	1	s	1	s	1	s	1	;
F	50	2	122	s	1	s	1	s	1	s	1	;
F	50	2	465	Dd	3	s	1	s	1	s	1	;
T	100	2	175	s	1	s	1	s	1	s	1	;
F	50	2	98	s	1	s	1	s	1	s	1	;
F	50	2	126	s	1	s	1	s	1	s	1	;
F	50	2	308	Dd	3	s	1	s	1	s	1	;
F	50	2	237	s	1	s	1	s	1	Dd	3	;
F	50	2	176	s	1	s	1	s	1	s	1	;
F	50	2	415	s	1	s	1	s	1	s	1	;
T	100	2	293	s	1	s	1	Dd	3	s	1	;
F	50	2	275	s	1	s	1	s	1	s	1	;
F	50	2	459	s	1	s	1	s	1	s	1	;
F	50	2	143	s	1	s	1	s	1	s	1	;
T	100	1	379	s	1	s	1	s	1	Dd	3	;
F	50	2	377	s	1	s	1	s	1	s	1	;
F	50	2	190	s	1	s	1	s	1	s	1	;
F	50	2	284	s	1	s	1	s	1	s	1	;
F	50	2	38	s	1	s	1	s	1	s	1	;
F	50	2	27	s	1	s	1	s	1	s	1	;
F	50	2	265	s	1	s	1	Dd	3	s	1	;
F	50	2	390	s	1	s	1	s	1	s	1	;
F	50	2	467	s	1	s	1	s	1	Dd	3	;
T	100	1	65	s	1	Dd	3	s	1	s	1	;
F	50	2	284	s	1	s	1	s	1	s	1	;
F	50	2	235	s	1	s	1	s	1	s	1	;
F	50	2	6	s	1	s	1	s	1	s	1	;
F	50	2	169	s	1	s	1	Dd	3	s	1	;
T	100	2	81	s	1	s	1	s	1	s	1	;
F	50	2	397	s	1	s	1	s	1	s	1	;
F	50	2	156	s	1	s	1	s	1	s	1	;
F	50	2	264	s	1	s	1	s	1	s	1	;
F	50	2	83	Dd	3	s	1	Dd	3	s	1	;
T	100	2	301	s	1	s	1	s	1	s	1	;
F	50	2	131	s	1	s	1	s	1	Dd	3	;
F	50	2	327	s	1	Dd	3	s	1	s	1	;
F	50	2	345	s	1	s	1	s	1	s	1	;
T	100	2	374	s	1	s	1	s	1	s	1	;
F	50	2	225	s	1	s	1	s	1	s	1	;
F	50	2	42	s	1	s	1	s	1	s	1	;
T	100	1	114	s	1	Dd	3	s	1	s	1	;
F	50	2	457	Dd	3	s	1	s	1	s	1	;
F	50	2	76	Dd	3	s	1	s	1	s	1	;
F	50	2	413	s	1	s	1	s	1	s	1	;
F	50	2	269	s	1	s	1	s	1	s	1	;
F	50	2	498	s	1	s	1	Dd	3	s	1	;
F	50	2	39	s	1	s	1	s	1	Dd	3	;
F	50	2	221	s	1	s	1	s	1	s	1	;
T	100	2	53	s	1	s	1	s	1	s	1	;
F	50	2	481	s	1	s	1	s	1	s	1	;
F	50	2	2	s	1	s	1	s	1	Dd	3	;
F	50	2	387	s	1	s	1	s	1	s	1	;
T	100	1	409	s	1	s	1	s	1	s	1	;
F	50	2	434	s	1	s	1	s	1	s	1	;
F	50	2	42	s	1	s	1	s	1	s	1	;
F	50	2	200	s	1	Dd	3	s	1	s	1	;
F	50	2	130	s	1	s	1	s	1	s	1	;
T	100	2	400	s	1	s	1	s	1	s	1	;
F	50	2	216	s	1	s	1	s	1	s	1	;
F	50	2	455	s	1	s	1	s	1	s	1	;
F	50	2	91	s	1	s	1	s	1	s	1	;
F	50	2	132	s	1	Dd	3	s	1	s	1	;
T	100	2	73	s	1	s	1	s	1	s	1	;
F	50	2	68	Dd	3	s	1	s	1	s	1	;
F	50	2	435	s	1	s	1	s	1	s	1	;
F	50	2	290	s	1	s	1	s	1	s	1	;
F	50	2	275	s	1	s	1	s	1	s	1	;
F	50	2	72	s	1	s	1	s	1	s	1	;
F	50	2	427	s	1	s	1	s	1	Dd	3	;
T	100	2	311	s	1	s	1	s	1	Dd	3	;
F	50	2	175	s	1	s	1	s	1	s	1	;
F	50	2	257	Dd	3	s	1	s	1	s	1	;
T	100	1	201	s	1	s	1	s	1	s	1	;
F	50	2	38	s	1	s	1	s	1	s	1	;
F	50	2	120	Dd	3	s	1	s	1	s	1	;
T	100	1	62	s	1	s	1	Dd	3	s	1	;
F	50	2	92	s	1	s	1	s	1	s	1	;
F	50	2	120	s	1	s	1	s	1	s	1	;
}	;


trial {
stimulus_event {
      picture{ text { caption = "+"; 
               font_size = 28;
               font_color = 255,255,255;
               };
		x = 0; y = 0;
      };  
      time = 2000;
		duration = 1000;
		port_code = 129;
      }; 
};