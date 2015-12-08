void drawForStateMenu() {
  background(0); //Sets the background to black
  
  textSize(22);//Sets the size of the text to 22
  fill(35,255,20);//Sets the colour of the text on the menu to green
  textAlign(CENTER);//Aligns the text to the center of the screen
  text("Press 1 to View Barchart of Kepler Planet Orbits Lengths in Days", width/2, 100);
  textAlign(CENTER);
  text("Press 2 to View Barchart of Temperature of Kepler Planets in Kelvin", width/2, 200);
  textAlign(CENTER);
  text("Press 3 to View Scatter Plot of Temperature and Orbit Length", width/2, 300);
  textAlign(CENTER);
  text("Press Q to QUIT", width/2, 400);
}
