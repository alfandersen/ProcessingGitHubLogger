import java.text.SimpleDateFormat;
import java.util.Date;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

void log(){
  try { Files.write(Paths.get(this.sketchPath() + "/logFile.csv"), csvTime().getBytes(), StandardOpenOption.APPEND); } 
  catch (IOException e) { e.printStackTrace(); }
}

String csvTime() {
  return new SimpleDateFormat("yyyy,MM,dd,HH,mm,ss").format(new Date());
}