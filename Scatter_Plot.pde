 void drawForStateScatter() {
   
  background(0);//Set background colour to black
  int i,j=0; //Variables for drawing lines on axes
  int n=0;
  int m=0;
  textSize(18);
  textAlign(CENTER);
  fill(0,125,250);
  text("Scatter Plot to Compare Correlation Between Length of a Planets Orbit and Temperature on Planet", width/2, 50);
  text("This Graph shows that a shorter orbit implies a hotter Planet as it will be closer to its Star", width/2, 100);
  
  
  line(50,0,50,550);//Draw y axis line
  line(50,550,1000,550);//Draw x axis line
  stroke(255,255,255);//Set stroke for line to white. Also sets stroke of objects to white so they are clearly visible
  
  for(i=0 ; i<560;i=i+10 )
  {
    line(50,i,40,i);//Draws short lines along y axes
  }
  for(j=550;j>0;j=j-20)
  {
    line(50,j,30,j);//Draws longer lines along y axes.
    textSize(8);
    textAlign(RIGHT);
    text(m,30,j);//Displays number beside long lines
    m=m+50;
  }
  
  for(i=50 ; i< 1000;i=i+10 )
  {
    line(i,550,i,560);//Draws short lines along x axes
  }
  for(j=50;j<1000;j=j+20)
  {
    line(j,550,j,570);//Draws longer lines along x axes.
    textSize(8);
    textAlign(CENTER);
    text(n,j,580);//Displays number beside long lines
    n=n+5;
  }
  
  for(TableRow row: table.rows())
  {  
    float pointX = row.getFloat("koi_orbital_period_days");//Time 
    float pointY = row.getFloat("koi_thermal_equilibrium");//Temp
   
    float x = map(pointX,0,210,50,width);//Plots x point based on data in planets orbit time
    float y = map(pointY,0,2100,height,0);//Plots y point based on data in planets temperature
   
    fill(0,125,250);;
    ellipse(x,y,10,10);//Draws ellipses for each planet on scatter graph
    
  }
  
  
}
