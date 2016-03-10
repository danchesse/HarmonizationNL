#This is adapted from the NAPLS2 paradigm, but it only
#includes long duration deviants (p = .10) and target 
#blue circles (p = .20)
 
scenario = "nvMMNb_naplsHarmonization_03172015blue"; 
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
F	50	2	451	s	1	s	1	s	1	s	1	;
F	50	2	472	s	1	s	1	s	1	s	1	;
F	50	2	245	s	1	s	1	s	1	s	1	;
T	100	2	245	s	1	s	1	s	1	s	1	;
F	50	2	169	Dd	3	s	1	s	1	s	1	;
F	50	2	450	s	1	s	1	Dd	3	s	1	;
T	100	1	185	s	1	s	1	s	1	s	1	;
F	50	2	56	s	1	s	1	s	1	s	1	;
F	50	2	390	s	1	s	1	s	1	s	1	;
F	50	2	195	s	1	s	1	s	1	Dd	3	;
T	100	1	121	s	1	s	1	s	1	s	1	;
F	50	2	202	Dd	3	s	1	s	1	s	1	;
F	50	2	48	s	1	Dd	3	s	1	s	1	;
F	50	2	66	s	1	s	1	s	1	s	1	;
F	50	2	471	s	1	s	1	Dd	3	s	1	;
F	50	2	478	s	1	s	1	Dd	3	s	1	;
F	50	2	288	s	1	Dd	3	s	1	Dd	3	;
T	100	2	30	s	1	s	1	s	1	s	1	;
F	50	2	117	s	1	s	1	s	1	s	1	;
F	50	2	177	s	1	s	1	s	1	s	1	;
F	50	2	411	s	1	s	1	s	1	s	1	;
F	50	2	8	s	1	s	1	Dd	3	s	1	;
F	50	2	22	s	1	s	1	s	1	s	1	;
F	50	2	84	s	1	s	1	s	1	s	1	;
T	100	2	325	Dd	3	s	1	s	1	s	1	;
F	50	2	366	s	1	s	1	s	1	s	1	;
F	50	2	324	s	1	s	1	s	1	s	1	;
F	50	2	225	s	1	s	1	s	1	s	1	;
T	100	1	274	Dd	3	s	1	s	1	s	1	;
F	50	2	148	s	1	s	1	s	1	s	1	;
F	50	2	372	s	1	s	1	s	1	s	1	;
F	50	2	94	s	1	s	1	s	1	s	1	;
F	50	2	343	s	1	s	1	s	1	s	1	;
T	100	2	92	s	1	s	1	s	1	s	1	;
F	50	2	184	s	1	s	1	s	1	Dd	3	;
F	50	2	313	s	1	Dd	3	s	1	s	1	;
F	50	2	390	s	1	s	1	s	1	Dd	3	;
F	50	2	41	s	1	s	1	s	1	s	1	;
F	50	2	465	Dd	3	s	1	s	1	s	1	;
F	50	2	388	s	1	s	1	Dd	3	s	1	;
F	50	2	243	s	1	s	1	s	1	s	1	;
T	100	2	218	s	1	s	1	s	1	s	1	;
F	50	2	223	s	1	s	1	s	1	s	1	;
F	50	2	153	s	1	s	1	s	1	s	1	;
F	50	2	254	s	1	s	1	s	1	s	1	;
F	50	2	255	s	1	s	1	s	1	s	1	;
T	100	2	409	s	1	s	1	s	1	s	1	;
F	50	2	397	s	1	s	1	s	1	s	1	;
F	50	2	322	s	1	Dd	3	s	1	s	1	;
F	50	2	189	s	1	s	1	s	1	s	1	;
F	50	2	406	s	1	s	1	s	1	s	1	;
F	50	2	266	Dd	3	s	1	s	1	s	1	;
T	100	1	175	s	1	s	1	s	1	s	1	;
F	50	2	470	s	1	s	1	s	1	s	1	;
F	50	2	438	s	1	s	1	s	1	s	1	;
F	50	2	275	Dd	3	s	1	s	1	s	1	;
T	100	2	311	s	1	s	1	s	1	s	1	;
F	50	2	294	s	1	s	1	Dd	3	s	1	;
F	50	2	104	s	1	s	1	s	1	s	1	;
F	50	2	151	Dd	3	s	1	s	1	s	1	;
F	50	2	235	s	1	Dd	3	s	1	s	1	;
F	50	2	115	s	1	s	1	s	1	s	1	;
F	50	2	422	s	1	s	1	s	1	s	1	;
T	100	2	97	s	1	s	1	s	1	s	1	;
F	50	2	113	s	1	s	1	s	1	s	1	;
F	50	2	85	s	1	s	1	s	1	s	1	;
F	50	2	114	s	1	Dd	3	s	1	s	1	;
F	50	2	218	s	1	s	1	s	1	Dd	3	;
F	50	2	156	s	1	Dd	3	s	1	s	1	;
T	100	2	462	s	1	s	1	s	1	s	1	;
F	50	2	215	s	1	s	1	s	1	Dd	3	;
F	50	2	92	s	1	s	1	s	1	s	1	;
F	50	2	452	s	1	s	1	s	1	s	1	;
F	50	2	490	s	1	Dd	3	s	1	s	1	;
F	50	2	219	s	1	s	1	s	1	s	1	;
T	100	1	56	s	1	s	1	s	1	s	1	;
F	50	2	129	s	1	s	1	s	1	s	1	;
F	50	2	204	Dd	3	s	1	s	1	s	1	;
F	50	2	297	Dd	3	s	1	s	1	s	1	;
F	50	2	131	Dd	3	s	1	s	1	s	1	;
T	100	1	301	s	1	s	1	s	1	s	1	;
F	50	2	356	s	1	s	1	s	1	s	1	;
F	50	2	111	s	1	s	1	s	1	s	1	;
F	50	2	59	s	1	Dd	3	s	1	s	1	;
F	50	2	148	s	1	s	1	Dd	3	s	1	;
F	50	2	159	s	1	s	1	s	1	s	1	;
F	50	2	212	Dd	3	s	1	s	1	s	1	;
T	100	2	254	s	1	s	1	s	1	s	1	;
F	50	2	43	s	1	s	1	s	1	s	1	;
F	50	2	131	s	1	s	1	s	1	s	1	;
F	50	2	401	s	1	s	1	Dd	3	s	1	;
F	50	2	15	Dd	3	s	1	s	1	s	1	;
F	50	2	464	s	1	s	1	Dd	3	s	1	;
T	100	1	365	s	1	s	1	s	1	s	1	;
F	50	2	244	s	1	Dd	3	s	1	s	1	;
F	50	2	289	s	1	s	1	s	1	s	1	;
F	50	2	119	s	1	s	1	s	1	s	1	;
T	100	1	229	s	1	s	1	s	1	s	1	;
F	50	2	482	s	1	s	1	Dd	3	s	1	;
F	50	2	273	s	1	s	1	s	1	Dd	3	;
F	50	2	261	s	1	s	1	s	1	s	1	;
F	50	2	116	s	1	s	1	s	1	s	1	;
T	100	1	244	s	1	s	1	s	1	s	1	;
F	50	2	312	Dd	3	s	1	Dd	3	s	1	;
F	50	2	340	s	1	s	1	s	1	s	1	;
F	50	2	198	s	1	s	1	s	1	s	1	;
F	50	2	184	s	1	s	1	s	1	s	1	;
F	50	2	494	s	1	s	1	s	1	s	1	;
F	50	2	19	s	1	s	1	s	1	Dd	3	;
T	100	1	443	s	1	s	1	s	1	s	1	;
F	50	2	457	s	1	s	1	s	1	Dd	3	;
F	50	2	398	s	1	s	1	s	1	s	1	;
T	100	1	49	s	1	s	1	s	1	s	1	;
F	50	2	131	s	1	s	1	s	1	s	1	;
F	50	2	168	s	1	s	1	s	1	s	1	;
T	100	2	340	s	1	s	1	Dd	3	s	1	;
F	50	2	68	s	1	s	1	s	1	s	1	;
F	50	2	361	s	1	s	1	s	1	s	1	;
F	50	2	53	s	1	s	1	s	1	s	1	;
T	100	1	327	s	1	s	1	s	1	Dd	3	;
F	50	2	247	s	1	s	1	s	1	s	1	;
F	50	2	390	s	1	Dd	3	s	1	s	1	;
F	50	2	358	s	1	s	1	s	1	Dd	3	;
T	100	2	452	s	1	s	1	s	1	s	1	;
F	50	2	445	s	1	s	1	Dd	3	s	1	;
F	50	2	167	s	1	s	1	s	1	Dd	3	;
T	100	1	349	s	1	s	1	s	1	s	1	;
F	50	2	99	s	1	s	1	Dd	3	s	1	;
F	50	2	15	s	1	Dd	3	s	1	s	1	;
F	50	2	372	s	1	s	1	s	1	s	1	;
T	100	2	250	Dd	3	s	1	s	1	s	1	;
F	50	2	240	s	1	s	1	s	1	s	1	;
T	100	1	452	s	1	s	1	s	1	s	1	;
F	50	2	305	s	1	s	1	s	1	s	1	;
F	50	2	309	s	1	s	1	s	1	s	1	;
F	50	2	430	s	1	s	1	s	1	s	1	;
F	50	2	403	s	1	Dd	3	s	1	s	1	;
T	100	1	288	s	1	s	1	s	1	s	1	;
F	50	2	91	s	1	Dd	3	s	1	s	1	;
F	50	2	120	s	1	Dd	3	s	1	s	1	;
F	50	2	443	Dd	3	s	1	s	1	s	1	;
T	100	2	14	s	1	s	1	s	1	s	1	;
F	50	2	245	s	1	s	1	s	1	s	1	;
F	50	2	84	s	1	s	1	s	1	s	1	;
F	50	2	489	Dd	3	s	1	s	1	s	1	;
F	50	2	356	s	1	s	1	s	1	s	1	;
F	50	2	250	s	1	Dd	3	s	1	s	1	;
F	50	2	236	s	1	s	1	s	1	s	1	;
T	100	2	30	s	1	s	1	s	1	s	1	;
F	50	2	341	s	1	s	1	Dd	3	s	1	;
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