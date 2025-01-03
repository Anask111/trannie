/*
 Copyright (C) 1991-2013 Altera Corporation
 Your use of Altera Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Altera Program License 
 Subscription Agreement, Altera MegaCore Function License 
 Agreement, or other applicable license agreement, including, 
 without limitation, that your use is for the sole purpose of 
 programming logic devices manufactured by Altera and sold by 
 Altera or its authorized distributors.  Please refer to the 
 applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part EPM240M100C4
 with speed grade 4, core voltage Auto, and temperature 2147483647 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "HA";
DATE "03/04/2024 17:25:02";
PROGRAM "Quartus II 64-Bit";



INPUT a;
INPUT b;
OUTPUT s;
OUTPUT c;

/*Arc definitions start here*/
___8.239__delay:		DELAY  8.239 ;
___7.718__delay:		DELAY  7.718 ;
___8.747__delay:		DELAY  8.747 ;
___8.217__delay:		DELAY  8.217 ;

ENDMODEL
