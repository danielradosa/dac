//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {

	/*Icon*/	/*Command*/		/*Updt Intrvl*/	/*Update Signal*/
	{"",			"nettraf",		1,							1},
  {"",  		"clock",  		60,   					2},
  {"",			"volume",			1,	 						3},
  {"",			"memory", 		5, 	 						4},
  {"",			"forecast", 	60, 						5},
  {"",  		"internet", 	5,  						6},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
