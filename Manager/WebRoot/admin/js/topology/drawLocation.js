function drawLocation(x,y,z) {
	
	
	var location=new Array();
	   for(var j=1;j<=20;j++) {
	   		location[j]=new Array();
	   		for(var k=0;k<21;k++) {
	   			location[j][k]= new Array(2);
	   		}
	   }

	   /*random */
	   location[12][0][0]=150;
	   location[12][0][1]=141;
	   location[12][1][0]=300;
	   location[12][1][1]=112;
	   location[12][2][0]=150;
	   location[12][2][1]=-142;
	   location[12][3][0]=300;
	   location[12][3][1]=-112;
	   location[12][4][0]=-150;
	   location[12][4][1]=142;
	   location[12][5][0]=-150;
	   location[12][5][1]=-142;
	   location[12][6][0]=-300;
	   location[12][6][1]=112;
	   location[12][7][0]=-300;
	   location[12][7][1]=-112;
	   location[12][8][0]=450;
	   location[12][8][1]=0;
	   location[12][9][0]=-450;
	   location[12][9][1]=0;
	   location[12][10][0]=0;
	   location[12][10][1]=150;
	   location[12][11][0]=0;
	   location[12][11][1]=-150;
	   
	   /*perfect*/
	   location[20][1][0]=-200;
	   location[20][1][1]=-100;
	   location[20][2][0]=150;
	   location[20][2][1]=-250;
	   location[20][3][0]=150;
	   location[20][3][1]=-100;
	   location[20][4][0]=-200;
	   location[20][4][1]=50;
	   location[20][5][0]=-350;
	   location[20][5][1]=-100;
	   location[20][6][0]=-200;
	   location[20][6][1]=-250;
	   location[20][7][0]=-350;
	   location[20][7][1]=50;
	   location[20][8][0]=150;
	   location[20][8][1]=50;
	   location[20][9][0]=300;
	   location[20][9][1]=-200;
	   location[20][10][0]=300;
	   location[20][10][1]=50;
	   location[20][11][0]=-600;
	   location[20][11][1]=-100;
	   location[20][12][0]=-600;
	   location[20][12][1]=50;
	   location[20][13][0]=600;
	   location[20][13][1]=-200;
	   location[20][14][0]=500;
	   location[20][14][1]=-200;
	   location[20][15][0]=600;
	   location[20][15][1]=50;
	   location[20][16][0]=-250;
	   location[20][16][1]=250;
	   location[20][17][0]=-100;
	   location[20][17][1]=250;
	   location[20][18][0]=50;
	   location[20][18][1]=350;
	   location[20][19][0]=50;
	   location[20][19][1]=250;
	   location[20][20][0]=250;
	   location[20][20][1]=250;
	   
	   
	   return location[x][y][z];
	
}