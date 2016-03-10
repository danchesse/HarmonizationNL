scenario = "Visual Oddball Instructions (Dutch Version)";
scenario_type = trials;

# sets the default text font
default_font = "Arial";
default_font_size = 14;
default_text_color = 0,0,0; # sets text to black

# sets the background colour to white (default is black)
default_background_color = 255,255,255;    

#center the text
default_text_align = align_center;
begin;

bitmap { filename = "SleepLookCircle.bmp";} NoSleep;
bitmap { filename = "SleepLook.bmp";} Sleep;
bitmap { filename = "IncorrectLookCircle.bmp";} NoLookAway;
bitmap { filename = "IncorrectLook.bmp";} LookAway;
bitmap { filename = "CorrectLookCircle.bmp";} YesLook;
bitmap { filename = "CorrectLook.bmp";} Look;
bitmap { filename = "BlankSubject.bmp";} sub;
bitmap { filename = "F.pcx";} F;
bitmap { filename = "T.pcx";} T;
bitmap { filename = "default.pcx";} blankPCX;

wavefile { filename = "nvmmn_instructionsNL.wav"; } visInstruct;
sound {
    wavefile visInstruct;
    attenuation = 0.2;
} visualInstruction;

picture {
      bitmap blankPCX;
      x = 0; y = 0;
} default; 

trial {
trial_duration = 50000;
sound visualInstruction;
time = 0;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 1000;
			duration = 7000;
			
picture {bitmap F;
			x = 0; y = 0;
			};
			time= 10590; # 10.59 secs
			duration = 6000;

picture {bitmap T;
			x = 0; y = 0;
			};
			time = 18800; # 18.80 secs
			duration = 6000;
			
picture {bitmap T;
			x = 0; y = 0;
			};
			time = 30850; # 30.85 secs
			duration = 2000;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 47000; # 47 secs
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 47200; #47.2 secs
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 47400; #47.4 secs
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 47600; #47.6 secs
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 47800;
			duration = next_picture;

picture {bitmap Look;
			x = 0; y = 0;
			};
			time = 48000;
			duration = next_picture;			

picture {bitmap YesLook;
			x = 0; y = 0;
			};
			time = 48200;
			duration = next_picture;

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 50200;
			duration = next_picture;			
			
picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 50600;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 50800;
			duration = next_picture;			

picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 51000;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 51200;
			duration = next_picture;			

picture {bitmap LookAway;
			x = 0; y = 0;
			};
			time = 51400;
			duration = next_picture;			

picture {bitmap NoLookAway;
			x = 0; y = 0;
			};
			time = 51600;
			duration = next_picture;			

picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 52000;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 56200;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 56400;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 56600;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 56800;
			duration = next_picture;

picture {bitmap Sleep;
			x = 0; y = 0;
			};
			time = 57000;
			duration = next_picture;

picture {bitmap NoSleep;
			x = 0; y = 0;
			};
			time = 57200;
			duration = next_picture;
			
picture {bitmap sub;
			x = 0; y = 0;
			};
			time = 57600;
			duration = next_picture;
};



			