//Codes keys for control of the player on the sketch
void keyPressed() 
{  
  switch(state) 
  {
    case stateMenu:
      if (key == '1') 
      {
        state = stateOrbitTime;
      }
      else if (key == '2') 
      {
        state = statePlanetTemp;
      } 
      else if (key == '3') 
      {
        state = stateScatter;
      }     
      break;   
   }//Switch ends
   
     if(key == 'm'||key == 'M')//Returns user to menu when hitting m from any screen
      {
        state = stateMenu;
      }
      else if (key == 'q'||key == 'Q')//Quits from any screen 
      {
        exit();
      } 
}//void Keypressed ends




