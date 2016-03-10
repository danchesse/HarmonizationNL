#correct responses will be recorded as 2's (S2 in BVA)
#incorrect responses will be recorded as 101's (S101 in BVA)
scenario = "NA1_naplsHarmonization03172015"; 
#attenuation updated for ER1 insert earphones and X-fi gamer card    
pcl_file = "Commands.pcl";
scenario_type = trials;    
write_codes = true;
response_matching = simple_matching;
active_buttons = 2;
button_codes = 101,10;  
target_button_codes = 2,11;
no_logfile = false;  
default_background_color = 0,0,0;   
pulse_width = 1;
           
begin;

picture {         text { caption = "+"; 
               font_size = 28;
               font_color = 255,255,255;
               };
           x = 0; y = 0;} default; 



wavefile { filename = "1000.wav"; } wav1000;
sound {
    wavefile wav1000;
    attenuation = 0.283;
} d;
               
wavefile { filename = "500.wav"; } wav500;
sound {
    wavefile wav500;
    attenuation = 0.22;
} s;


trial {
	stimulus_event {
	picture{text { caption = "3"; 
               	font_size = 48;
               	font_color = 255,255,255;};
		x = 0; y = 0;};
        duration = 1500;
        code = "83";
        port_code = 128;
     	};

	stimulus_event {
	picture{text { caption = "2"; 
                font_size = 48;
                font_color = 255,255,255;};
          	x = 0; y = 0;};
	time = 2000; 
	duration = 1500;
	code = "82";
       	};  
       
	stimulus_event {
	picture{text { caption = "1"; 
                font_size = 48;
                font_color = 255,255,255;};
           	x = 0; y = 0;};
         time = 4000; 
         duration = 1500;
         code = "81"; 
         
         };        
};
           
    
TEMPLATE "nova.tem" {
the_sound	the_code	     trigger_value    SOA  foo     ;
s	"s"	1	1307	false	;
s	"s"	1	1093	false	;
s	"s"	1	1253	false	;
s	"s"	1	1173	false	;
d	"d"	200	1333	true	;
s	"s"	1	1200	false	;
s	"s"	1	1227	false	;
s	"s"	1	1200	false	;
d	"d"	200	1253	true	;
s	"s"	1	1120	false	;
s	"s"	1	1333	false	;
s	"s"	1	1067	false	;
d	"d"	200	1147	true	;
s	"s"	1	1200	false	;
s	"s"	1	1333	false	;
s	"s"	1	1280	false	;
s	"s"	1	1253	false	;
d	"d"	200	1253	true	;
s	"s"	1	1280	false	;
s	"s"	1	1227	false	;
s	"s"	1	1173	false	;
s	"s"	1	1227	false	;
d	"d"	200	1200	true	;
s	"s"	1	1253	false	;
s	"s"	1	1200	false	;
s	"s"	1	1067	false	;
d	"d"	200	1093	true	;
s	"s"	1	1173	false	;
s	"s"	1	1280	false	;
s	"s"	1	1307	false	;
s	"s"	1	1147	false	;
s	"s"	1	1200	false	;
d	"d"	200	1120	true	;
s	"s"	1	1173	false	;
s	"s"	1	1253	false	;
s	"s"	1	1227	false	;
d	"d"	200	1147	true	;
s	"s"	1	1067	false	;
s	"s"	1	1307	false	;
s	"s"	1	1200	false	;
s	"s"	1	1120	false	;
d	"d"	200	1307	true	;
s	"s"	1	1173	false	;
s	"s"	1	1227	false	;
s	"s"	1	1147	false	;
d	"d"	200	1333	true	;
s	"s"	1	1280	false	;
s	"s"	1	1147	false	;
s	"s"	1	1200	false	;
s	"s"	1	1280	false	;
s	"s"	1	1200	false	;
s	"s"	1	1067	false	;
d	"d"	200	1253	true	;
s	"s"	1	1280	false	;
s	"s"	1	1093	false	;
d	"d"	200	1333	true	;
s	"s"	1	1253	false	;
s	"s"	1	1280	false	;
s	"s"	1	1280	false	;
s	"s"	1	1067	false	;
d	"d"	200	1093	true	;
s	"s"	1	1093	false	;
s	"s"	1	1307	false	;
s	"s"	1	1147	false	;
s	"s"	1	1227	false	;
s	"s"	1	1120	false	;
d	"d"	200	1120	true	;
s	"s"	1	1307	false	;
s	"s"	1	1307	false	;
s	"s"	1	1120	false	;
s	"s"	1	1173	false	;
d	"d"	200	1067	true	;
s	"s"	1	1307	false	;
s	"s"	1	1147	false	;
d	"d"	200	1067	true	;
s	"s"	1	1307	false	;
s	"s"	1	1093	false	;
s	"s"	1	1093	false	;
s	"s"	1	1333	false	;
s	"s"	1	1173	false	;
d	"d"	200	1227	true	;
s	"s"	1	1120	false	;
s	"s"	1	1227	false	;
s	"s"	1	1333	false	;
s	"s"	1	1173	false	;
s	"s"	1	1147	false	;
s	"s"	1	1280	false	;
s	"s"	1	1120	false	;
d	"d"	200	1173	true	;
s	"s"	1	1093	false	;
s	"s"	1	1227	false	;
s	"s"	1	1120	false	;
s	"s"	1	1147	false	;
s	"s"	1	1333	false	;
s	"s"	1	1333	false	;
d	"d"	200	1093	true	;
s	"s"	1	1253	false	;
s	"s"	1	1067	false	;
s	"s"	1	1067	false	;
d	"d"	200	1120	true	;
};

#countdown:
trial{
	trial_duration = 20000;
   stimulus_event {
		picture{text { caption = "REST"	; 
               	font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 0;
			duration = next_picture;
			code = "10sec_REST"; 
	} event_rest;
	stimulus_event { 
		picture{text{caption = "10";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 10000;
			duration = next_picture;
			code = "countdown10";
    } event10;
	stimulus_event { 
		picture{text{caption = "9";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 11000;
			duration = next_picture;
			code = "countdown9";
    } event9;
	stimulus_event { 
		picture{text{caption = "8";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 12000;
			duration = next_picture;
			code = "countdown8";
    } event8;
	stimulus_event { 
		picture{text{caption = "7";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 13000;
			duration = next_picture;
			code = "countdown7";
    } event7;
   stimulus_event { 
		picture{text{caption = "6";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 14000;
			duration = next_picture;
			code = "countdown6";
    } event6;
	stimulus_event { 
		picture{text{caption = "5";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 15000;
			duration = next_picture;
			code = "countdown5";
    } event5;
	stimulus_event { 
		picture{text{caption = "4";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 16000;
			duration = next_picture;
			code = "countdown4";
    } event4;
	stimulus_event { 
		picture{text{caption = "3";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 17000;
			duration = next_picture;
			code = "countdown3";
    } event3;
	stimulus_event { 
		picture{text{caption = "2";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 18000;
			duration = next_picture;
			code = "countdown2";
    } event2;
	stimulus_event { 
		picture{text{caption = "1";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 19000;
			duration = 1000;
			code = "countdown1";
    } event1;
};


TEMPLATE "nova.tem" {
the_sound	the_code	     trigger_value    SOA  foo     ;
s	"s"	1	1093	false	;
s	"s"	1	1253	false	;
s	"s"	1	1307	false	;
s	"s"	1	1200	false	;
s	"s"	1	1067	false	;
d	"d"	200	1200	true	;
s	"s"	1	1333	false	;
s	"s"	1	1227	false	;
s	"s"	1	1253	false	;
d	"d"	200	1200	true	;
s	"s"	1	1120	false	;
s	"s"	1	1333	false	;
s	"s"	1	1227	false	;
s	"s"	1	1333	false	;
d	"d"	200	1173	true	;
s	"s"	1	1173	false	;
s	"s"	1	1253	false	;
d	"d"	200	1280	true	;
s	"s"	1	1253	false	;
s	"s"	1	1147	false	;
s	"s"	1	1173	false	;
s	"s"	1	1227	false	;
s	"s"	1	1200	false	;
d	"d"	200	1093	true	;
s	"s"	1	1200	false	;
s	"s"	1	1120	false	;
s	"s"	1	1280	false	;
s	"s"	1	1253	false	;
d	"d"	200	1280	true	;
s	"s"	1	1307	false	;
s	"s"	1	1067	false	;
s	"s"	1	1200	false	;
s	"s"	1	1147	false	;
s	"s"	1	1173	false	;
s	"s"	1	1147	false	;
d	"d"	200	1227	true	;
s	"s"	1	1147	false	;
s	"s"	1	1307	false	;
d	"d"	200	1067	true	;
s	"s"	1	1333	false	;
s	"s"	1	1120	false	;
s	"s"	1	1307	false	;
d	"d"	200	1173	true	;
s	"s"	1	1227	false	;
s	"s"	1	1253	false	;
s	"s"	1	1200	false	;
s	"s"	1	1280	false	;
d	"d"	200	1147	true	;
s	"s"	1	1280	false	;
s	"s"	1	1200	false	;
s	"s"	1	1200	false	;
s	"s"	1	1067	false	;
d	"d"	200	1093	true	;
s	"s"	1	1280	false	;
s	"s"	1	1253	false	;
s	"s"	1	1333	false	;
s	"s"	1	1253	false	;
s	"s"	1	1280	false	;
s	"s"	1	1067	false	;
s	"s"	1	1280	false	;
d	"d"	200	1093	true	;
s	"s"	1	1093	false	;
s	"s"	1	1307	false	;
s	"s"	1	1147	false	;
s	"s"	1	1227	false	;
s	"s"	1	1307	false	;
s	"s"	1	1120	false	;
d	"d"	200	1307	true	;
s	"s"	1	1120	false	;
s	"s"	1	1120	false	;
s	"s"	1	1173	false	;
d	"d"	200	1307	true	;
s	"s"	1	1147	false	;
s	"s"	1	1307	false	;
s	"s"	1	1067	false	;
s	"s"	1	1067	false	;
d	"d"	200	1093	true	;
s	"s"	1	1093	false	;
s	"s"	1	1333	false	;
s	"s"	1	1173	false	;
s	"s"	1	1333	false	;
s	"s"	1	1173	false	;
d	"d"	200	1227	true	;
s	"s"	1	1227	false	;
d	"d"	200	1120	true	;
s	"s"	1	1147	false	;
s	"s"	1	1280	false	;
s	"s"	1	1120	false	;
s	"s"	1	1173	false	;
s	"s"	1	1093	false	;
d	"d"	200	1227	true	;
s	"s"	1	1120	false	;
s	"s"	1	1147	false	;
s	"s"	1	1333	false	;
d	"d"	200	1333	true	;
s	"s"	1	1093	false	;
s	"s"	1	1253	false	;
d	"d"	200	1067	true	;
s	"s"	1	1067	false	;
s	"s"	1	1120	false	;
};

#countdown:
trial{
	trial_duration = 20000;
   stimulus_event {
		picture{text { caption = "REST"	; 
               	font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 0;
			duration = next_picture;
			code = "10sec_REST"; 
	} event2_rest;
	stimulus_event { 
		picture{text{caption = "10";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 10000;
			duration = next_picture;
			code = "countdown10";
    } event2_10;
	stimulus_event { 
		picture{text{caption = "9";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 11000;
			duration = next_picture;
			code = "countdown9";
    } event2_9;
	stimulus_event { 
		picture{text{caption = "8";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 12000;
			duration = next_picture;
			code = "countdown8";
    } event2_8;
	stimulus_event { 
		picture{text{caption = "7";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 13000;
			duration = next_picture;
			code = "countdown7";
    } event2_7;
   stimulus_event { 
		picture{text{caption = "6";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 14000;
			duration = next_picture;
			code = "countdown6";
    } event2_6;
	stimulus_event { 
		picture{text{caption = "5";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 15000;
			duration = next_picture;
			code = "countdown5";
    } event2_5;
	stimulus_event { 
		picture{text{caption = "4";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 16000;
			duration = next_picture;
			code = "countdown4";
    } event2_4;
	stimulus_event { 
		picture{text{caption = "3";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 17000;
			duration = next_picture;
			code = "countdown3";
    } event2_3;
	stimulus_event { 
		picture{text{caption = "2";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 18000;
			duration = next_picture;
			code = "countdown2";
    } event2_2;
	stimulus_event { 
		picture{text{caption = "1";
						font_size = 48	;}	;
						x = 0	; y = 0; };
			time = 19000;
			duration = 1000;
			code = "countdown1";
    } event2_1;
};


TEMPLATE "nova.tem" {
the_sound	the_code	     trigger_value    SOA  foo     ;
s	"s"	1	1093	false	;
s	"s"	1	1307	false	;
s	"s"	1	1253	false	;
d	"d"	200	1067	true	;
s	"s"	1	1200	false	;
s	"s"	1	1200	false	;
s	"s"	1	1227	false	;
s	"s"	1	1333	false	;
s	"s"	1	1253	false	;
s	"s"	1	1120	false	;
d	"d"	200	1200	true	;
s	"s"	1	1173	false	;
d	"d"	200	1227	true	;
s	"s"	1	1333	false	;
d	"d"	200	1333	true	;
s	"s"	1	1280	false	;
s	"s"	1	1253	false	;
s	"s"	1	1173	false	;
s	"s"	1	1253	false	;
s	"s"	1	1227	false	;
s	"s"	1	1173	false	;
d	"d"	200	1147	true	;
s	"s"	1	1200	false	;
s	"s"	1	1280	false	;
s	"s"	1	1200	false	;
d	"d"	200	1120	true	;
s	"s"	1	1093	false	;
s	"s"	1	1253	false	;
s	"s"	1	1280	false	;
s	"s"	1	1307	false	;
s	"s"	1	1067	false	;
s	"s"	1	1200	false	;
d	"d"	200	1147	true	;
s	"s"	1	1173	false	;
s	"s"	1	1147	false	;
s	"s"	1	1227	false	;
s	"s"	1	1147	false	;
s	"s"	1	1307	false	;
s	"s"	1	1067	false	;
s	"s"	1	1333	false	;
s	"s"	1	1120	false	;
d	"d"	200	1307	true	;
s	"s"	1	1173	false	;
s	"s"	1	1227	false	;
s	"s"	1	1253	false	;
d	"d"	200	1200	true	;
s	"s"	1	1280	false	;
s	"s"	1	1147	false	;
s	"s"	1	1280	false	;
d	"d"	200	1200	true	;
s	"s"	1	1200	false	;
s	"s"	1	1067	false	;
d	"d"	200	1093	true	;
s	"s"	1	1280	false	;
s	"s"	1	1253	false	;
s	"s"	1	1333	false	;
d	"d"	200	1253	true	;
s	"s"	1	1280	false	;
s	"s"	1	1067	false	;
d	"d"	200	1280	true	;
s	"s"	1	1093	false	;
s	"s"	1	1093	false	;
d	"d"	200	1307	true	;
s	"s"	1	1147	false	;
s	"s"	1	1227	false	;
s	"s"	1	1307	false	;
s	"s"	1	1120	false	;
d	"d"	200	1307	true	;
s	"s"	1	1120	false	;
s	"s"	1	1120	false	;
d	"d"	200	1173	true	;
s	"s"	1	1307	false	;
s	"s"	1	1147	false	;
s	"s"	1	1307	false	;
s	"s"	1	1067	false	;
s	"s"	1	1067	false	;
s	"s"	1	1093	false	;
s	"s"	1	1093	false	;
s	"s"	1	1333	false	;
s	"s"	1	1173	false	;
s	"s"	1	1333	false	;
s	"s"	1	1173	false	;
d	"d"	200	1227	true	;
s	"s"	1	1227	false	;
s	"s"	1	1120	false	;
s	"s"	1	1147	false	;
d	"d"	200	1280	true	;
s	"s"	1	1120	false	;
s	"s"	1	1173	false	;
s	"s"	1	1093	false	;
s	"s"	1	1227	false	;
s	"s"	1	1120	false	;
d	"d"	200	1147	true	;
s	"s"	1	1333	false	;
s	"s"	1	1333	false	;
s	"s"	1	1093	false	;
s	"s"	1	1253	false	;
s	"s"	1	1067	false	;
d	"d"	200	1067	true	;
s	"s"	1	1120	false	;
};


      trial {

      
      stimulus_event {
      
      
      picture{ 

     
   text { caption = "+"; 
               font_size = 28;
               font_color = 255,255,255;
               };
           x = 0; y = 0;
      };  
      time = 2800; 
      duration = 20;
      port_code = 129;
      }; 
      };