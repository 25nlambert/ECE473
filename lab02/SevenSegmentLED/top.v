//file top.v
//The output of the LED will be 1 if and only if two or more of the dip switches are 1

module top( SW, HEX0, HEX1 );

		input wire[7:0] SW;		//Dip Switches
		output wire[6:0] HEX0;	//Display 0 7 Seg
		output wire[6:0] HEX1;	//Display 1 7 Seg
		
		hexdecoder (SW[3:0], HEX0); //Displays the value of dips 3-0
		hexdecoder (SW[7:4], HEX1); //Displays the value of dips 7-4
		
endmodule
	