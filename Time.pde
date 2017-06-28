import java.text.SimpleDateFormat;
import java.util.Date;

String csvTime() {
  return new SimpleDateFormat("yyyy,MM,dd,HH,mm,ss").format(new Date());
}