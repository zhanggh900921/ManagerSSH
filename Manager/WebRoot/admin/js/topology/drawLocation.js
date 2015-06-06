function drawLocation(x,y,z) {
	
	
	var location=new Array();
	   for(var j=1;j<20;j++) {
	   		location[j]=new Array();
	   		for(var k=0;k<j;k++) {
	   			location[j][k]= new Array(2);
	   		}
	   }

	   
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
	   
	   
	   location[10][0][0]=-200;
	   location[10][0][1]=0;
	   location[10][1][0]=200;
	   location[10][1][1]=-150;
	   location[10][2][0]=200;
	   location[10][2][1]=0;
	   location[10][3][0]=-200;
	   location[10][3][1]=150;
	   location[10][4][0]=-400;
	   location[10][4][1]=0;
	   location[10][5][0]=-200;
	   location[10][5][1]=-150;
	   location[10][6][0]=-400;
	   location[10][6][1]=150;
	   location[10][7][0]=200;
	   location[10][7][1]=150;
	   location[10][8][0]=400;
	   location[10][8][1]=-100;
	   location[10][9][0]=400;
	   location[10][9][1]=150;
	   
	   
	   return location[x][y][z];
	
}