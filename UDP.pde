// import UDP library
import hypermedia.net.*;

UDP udp;

void udpBegin() {
  udp = new UDP( this, 6000 );
  udp.listen( true );
}

void receive( byte[] data, String ip, int port ) {
  String response = pushLog();
  udp.send(response, ip, port);
}