//Initializes state variables
final int stateMenu = 0;
final int stateOrbitTime = 1;
final int statePlanetTemp = 2;
final int stateScatter = 3;
int state = stateMenu;//Sets original state to the menu

Table table;//Initializes table as global variable

void setup()
{ 
  size(1000,600);//1000 width 600 height
  
  //Loads cumulative.tsv file into table  
  table = loadTable("cumulative.tsv","header");
  
  println(table.getColumnCount());//Displays number of columns in dataset table
  println(table.getRowCount());//Displays number of rows in dataset table
}



void draw() {//Main draw with a switch statement to activate draws of individual cases
 
  switch(state) {
    case stateMenu://Default Menu State
      drawForStateMenu();
      break;
        
    case stateOrbitTime:
      drawForStateOrbitTime();
      break;
      
    case statePlanetTemp:
      drawForStatePlanetTemp();
      break;
 
    case stateScatter:
      drawForStateScatter();
      break;
    default:
    break;
  }//switch ends
}//draw ends
