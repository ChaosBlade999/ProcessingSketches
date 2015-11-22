PImage mustache;
PImage friends;
PImage glasses;
int mx=200;
int my=200;
int gx=50;
int gy=50;
void setup() {
  friends= loadImage("friends.jpg");
  glasses= loadImage("glasses.png");
  size(friends.width, friends.height);
  background(friends);
  mustache = loadImage("tash.png");
}
void draw() {
  background(friends);
  glasses.resize(150,50);
  image(glasses,gx,gy);
  mustache.resize(100,50);
  image(mustache,mx,my);
  if(keyPressed&&key=='c'){
  background(friends);
  }
  if(mousePressed&&mouseButton==LEFT){
    mx=mouseX-50;
    my=mouseY-20;
  }
  if(mousePressed&&mouseButton==RIGHT){
    gx=mouseX-70;
    gy=mouseY-20;
  }
}
