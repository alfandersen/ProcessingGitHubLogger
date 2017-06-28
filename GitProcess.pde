import java.io.InputStreamReader;

BufferedReader pushLog(){
  String path = this.sketchPath();
  String commitMessage = new Date().toString();
  ArrayList<String> args = new ArrayList<String>();
  args.add(path + "/GithubLogger.bat");
  args.add(path);
  args.add("logFile.csv");
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