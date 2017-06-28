
void setup() {
  udpBegin();
}

void draw() {
}

void mousePressed() {
  log(csvTimeStamp());
}

String csvTimeStamp() {
  return new SimpleDateFormat("yyyy,MM,dd,HH,mm,ss,EEEE,w\n", Locale.US).format(new Date());
}