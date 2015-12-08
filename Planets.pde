void drawForStatePlanetTemp() {
  
  background(0);//Set background colour to black
  int xpos=50;
  float ypos= 0;
  int i,j,n=0;
  textSize(20);
  text("Barchart to Display Temperature of Kepler Planets in Kelvin", width/2, 50);
  
  line(50,0,50,600);//Draw main y axis line
  stroke(255,255,255);//Set stroke for line to white. Also sets stroke of bars in chart to white so they are more visible
  
  for(i=0 ; i<600 ; i=i+10 )
  {
    line(50,i,35,i);//Draws short lines along y axes
  }
  
  for(j=0;j<600;j=j+20)
  {
    line(50,j,30,j);//Draws longer lines along y axes.
    n=height-j;
    n=n*4;
    text(n,20,j);//Displays number beside long lines
    textSize(8);
  }
  
  for(TableRow row: table.rows())
  {
    float barHeight = row.getFloat("koi_thermal_equilibrium")/4 ;// Sets barHeight val to current float in data and multiplies by 2 to represent size on graph better
    float barWidth = 5;// Sets width of bars to 5
    ypos = height - barHeight;

    rect(xpos, ypos ,barWidth,barHeight);//Draws each bar depending on value in dataset
    fill(0,125,250);//Sets colour of bars to blue
    
    xpos = xpos + ( width / table.getRowCount() );//Spreads bars out evenly dependant on amount of data in set
  }
  
  
}
