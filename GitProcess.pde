import java.io.InputStreamReader;

String pushLog(){
  StringBuilder output = new StringBuilder();
  String path = this.sketchPath();
  String commitMessage = new Date().toString();
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
      output.append(out);
    }
  }
  catch (IOException e) {
    return e.toString();
  }
  return output.toString();
}