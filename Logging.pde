import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

void log(String line){
  try { 
    Files.write(Paths.get(this.sketchPath() + "/logFile.csv"), line.getBytes(), StandardOpenOption.APPEND); 
    print("logged "+line);
  } 
  catch (IOException e) { e.printStackTrace(); }
}