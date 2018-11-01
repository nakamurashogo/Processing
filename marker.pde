import processing.net.*;
final String text = "text.txt";
int textY;
int fontSize;
PFont font;
String lineData[] = null;


float x=0;
float y=3; //調整用
//最初に何か文字列を入れておく。適当
//String str = "null";
String str = "1";
int port = 10001;
Server server;

void setup(){
  frameRate(60);
  size(1500, 1000);
  fill(255,255,255);
  
  //サーバ設定
  server = new Server(this, port);
  println("server address: " + server.ip());
  
  
  fontSize = 24;
  font = createFont("ゴシック", 24);
  textFont( font,fontSize );
  textAlign( LEFT, TOP );
  textLeading(40);
  //テキストファイルを読む
  lineData = loadStrings(text);
  if( lineData == null ){
    println("error");
    exit();
  }
}

void draw(){
  
  
  text();
  
  //pythonからデータ受け取り
  Client client = server.available();
  if (client !=null) {
    str = client.readString();
    if (str != null) {
      println("import text:" + str); 
    } 
  }
  //受け取ったデータ（文字列）をint型に変換
  int data = int(str);
  
  if(data > 2){
    forward(data);
  }
  if(data < -2){
    data = data * (-1);
    back(data);
  }
  //print(x , y);
  
  text();
}
