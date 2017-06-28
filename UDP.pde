// import UDP library
import hypermedia.net.*;

UDP udp;

void udpBegin() {
  udp = new UDP( this, 6000 );
  //udp.log( true );     // <-- printout the connection activity
  //udp.setBuffer(65507*2);
  udp.listen( true );
}

void receive( byte[] data, String ip, int port ) {
  StringBuilder message = new StringBuilder();
  for (int i = 0; i < 3000; i++) {
    message.append("2017,6,27,16,14,53\n");
  }
  udp.send( message.toString(), ip, port );
}