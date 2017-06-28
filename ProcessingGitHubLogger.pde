import java.io.InputStreamReader;
import java.io.FileWriter;
import java.io.BufferedWriter;
void setup() {
  //udpBegin();
}

void draw() {
}

void mousePressed() {
  log();
  String path = this.sketchPath();
  String commitMessage = "First auto-commit";
  ArrayList<String> args = new ArrayList<String>();
  args.add(path + "/GithubLogger.bat");
  args.add(path);
  args.add("logFile.csv");
  args.add(commitMessage);
  try {
    ProcessBuilder pb = new ProcessBuilder(args);
    Process p = pb.start();
    InputStreamReader isr = new InputStreamReader(p.getInputStream());
    BufferedReader br = new BufferedReader(isr);
    String out;
    while ( (out = br.readLine()) != null) {
      println(out);
    }
  }
  catch (IOException e) {
    e.printStackTrace();
  }
}

boolean log(){
  try {
    FileWriter fw = new FileWriter(this.sketchPath() + "/logFile.csv", true);
    BufferedWriter bw = new BufferedWriter(fw);
    PrintWriter out = new PrintWriter(bw);
    out.println(csvTime());
    out.close();
  } catch (IOException e) {
      e.printStackTrace();
      return false;
  }
  return true;
}