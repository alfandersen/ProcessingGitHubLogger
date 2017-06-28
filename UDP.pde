// import UDP library
import hypermedia.net.*;

UDP udp;

void udpBegin() {
  udp = new UDP(this, 6000);
  udp.listen(true);
}

void receive (byte[] data, String ip, int port) {
  println(String.format("Received: '%s' from IP: %s PORT: %d", new String(data), ip, port));
  
  BufferedReader response = pushLog();
  
  if (response != null) {
    try {
      String out;
      while ((out = response.readLine()) != null) {
        udp.send(out, ip, port);
        println(out);
      }
    }
    catch (IOException e) {
      e.printStackTrace();
      udp.send(e.toString(), ip, port);
    }
  }
  else {
    udp.send("Error: pushLog() returned null");
  }
}