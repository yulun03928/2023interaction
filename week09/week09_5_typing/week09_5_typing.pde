PImage img;
int [][] pos = {{78, 475}, {231, 510}, {164, 510}, {147, 476}, {138, 441}, {180, 475}, {215, 475}, {248, 475}, {307, 442}, {284, 475}, {318, 475}, {351, 475}, {301, 509}, {267, 509}, {342, 442}, {378, 441}, {70, 441}, {172, 441}, {111, 475}, {205, 442}, {271, 442}, {198, 509}, {104, 441}, {129, 510}, {238, 441}, {95, 509}};

void setup() {
  size(800, 600);
  img = loadImage("keyboard.png");
}

void draw () {
  background(#FFFFF2);
  image(img, 0, 600-266);
  fill(0, 255, 0, 128);
  for (int i=0; i<26; i++) {
    if (typing.charAt(ID)-'a'==i)rect(pos[i][0], pos[i][1], 28, 30, 5);
  }

  textSize(50);
  fill(0);
  text(typing, 50, 50);
  fill(255, 0, 0);
  text(typed + typing.charAt(ID), 50, 100);
  fill(0);
  text(typed, 50, 100);
}
String typing = "printfprintfprintf";
String typed = "";
int ID=0;
boolean [] pressed = new boolean [26];
void keyPressed () {
  if (key>='a'&&key<='z') {
    if (key==typing.charAt(ID)) {
      pressed[key-'a']=true;
      typed += key;
      ID++;
    } else {
      background(255, 0, 0);
    }
  }
}
void keyReleased() {
  if (key>='a'&&key<='z')pressed[key-'a']=true;
}