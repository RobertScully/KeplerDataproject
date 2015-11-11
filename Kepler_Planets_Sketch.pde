void setup()
{
Table table = loadTable("cumulative.tsv","header");//Loads cumulative.tsv file into table
println(table.getColumnCount());//Displays number of columns in dataset table
println(table.getRowCount());//Displays number of rows in dataset table


  for(TableRow row : table.rows())//Loops through all of the rows and prints there names
  {
    println(row.getString("kepler_name"));
  }
}
//Above code is a test to show dataset is accessible 
