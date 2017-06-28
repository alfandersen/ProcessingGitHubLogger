import java.io.InputStreamReader;

BufferedReader pushLog(){
  String sketchPath = this.sketchPath();
  String batchFile = sketchPath + "/GithubLogger.bat";
  String logFile = "logFile.csv";
  String commitMessage = new Date().toString();
  
  ArrayList<String> args = new ArrayList<String>();
  args.add(batchFile);
  args.add(sketchPath);
  args.add(logFile);
  args.add(commitMessage);
  
  try {
    Process p = new ProcessBuilder(args).start();
    InputStreamReader isr = new InputStreamReader(p.getInputStream());
    return new BufferedReader(isr);
  }
  catch (IOException e) {
    e.printStackTrace();
    return null;
  }
}