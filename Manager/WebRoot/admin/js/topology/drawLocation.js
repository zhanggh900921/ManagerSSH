function drawLocation(x,y,z) {
	
	
	var location=new Array();
	   for(var j=1;j<=20;j++) {
	   		location[j]=new Array();
	   		for(var k=0;k<=20;k++) { //k的初始值和结束值不能改动，否则无法运行
	   			location[j][k]= new Array(2);
	   		}
	   }
	   
	   /*demonstration in use */
	   location[20][1][0]=260;
	   location[20][1][1]=-300;
	   location[20][2][0]=350;
	   location[20][2][1]=-150;
	   location[20][3][0]=200;
	   location[20][3][1]=-150;
	   location[20][4][0]=450;
	   location[20][4][1]=160;
	   location[20][5][0]=450;
	   location[20][5][1]=280;
	   location[20][6][0]=550;
	   location[20][6][1]=50;
	   location[20][7][0]=350;
	   location[20][7][1]=50;
	   
	   location[20][8][0]=-100;
	   location[20][8][1]=-150;
	   location[20][9][0]=-280;
	   location[20][9][1]=-300;
	   location[20][10][0]=-350;
	   location[20][10][1]=-150;
	   location[20][11][0]=-250;
	   location[20][11][1]=50;
	   location[20][12][0]=150;
	   location[20][12][1]=200;
	   location[20][13][0]=-350;
	   location[20][13][1]=350;
	   location[20][14][0]=-350;
	   location[20][14][1]=200;
	   
	   location[20][15][0]=25;
	   location[20][15][1]=200;
	   location[20][16][0]=150;
	   location[20][16][1]=350;
	   location[20][17][0]=25;
	   location[20][17][1]=350;
	   location[20][18][0]=550;
	   location[20][18][1]=350;
	   location[20][19][0]=350;
	   location[20][19][1]=350;
	   
	   location[20][20][0]=-550;
	   location[20][20][1]=50;

	   /*demonstration2 */
	   
	   
	   
	   
	   /*demonstration */
	   location[7][1][0]=-200;
	   location[7][1][1]=-150;
	   location[7][2][0]=200;
	   location[7][2][1]=-150;
	   location[7][3][0]=0;
	   location[7][3][1]=0;
	   location[7][4][0]=0;
	   location[7][4][1]=100;
	   location[7][5][0]=-200;
	   location[7][5][1]=250;
	   location[7][6][0]=200;
	   location[7][6][1]=250;
	   location[7][7][0]=0;
	   location[7][7][1]=-250;
	   /*demonstration */
	   
	   /*demonstration2 */
	   location[17][1][0]=2220;
	   location[17][1][1]=-50;
	   location[17][2][0]=400;
	   location[17][2][1]=-50;
	   location[17][3][0]=200;
	   location[17][3][1]=100;
	   location[17][4][0]=200;
	   location[17][4][1]=200;
	   location[17][5][0]=0;
	   location[17][5][1]=350;
	   location[17][6][0]=400;
	   location[17][6][1]=350;
	   location[17][7][0]=200;
	   location[17][7][1]=-150;
	   
	   location[17][8][0]=-400;
	   location[17][8][1]=50;
	   location[17][9][0]=-550;
	   location[17][9][1]=200;
	   location[17][10][0]=-550;
	   location[17][10][1]=50;
	   location[17][11][0]=-400;
	   location[17][11][1]=350;
	   location[17][12][0]=-250;
	   location[17][12][1]=200;
	   location[17][13][0]=-250;
	   location[17][13][1]=50;
	   location[17][14][0]=-400;
	   location[17][14][1]=-100;
	   
	   location[17][15][0]=-250;
	   location[17][15][1]=-200;
	   location[17][16][0]=-50;
	   location[17][16][1]=-200;
	   location[17][17][0]=-150;
	   location[17][17][1]=-300;

	   /*demonstration2 */
	   
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


	   
	   
	   return location[x][y][z];
	
}