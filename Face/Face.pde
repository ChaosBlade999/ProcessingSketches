PImage face;
PFont font;
void setup(){
  size(250,250);
  background(255);
  frameRate(10);
  face=loadImage("face.jpeg");
  font=loadFont("Baskerville-BoldItalic-48.vlw");
}
void draw(){
    background(255);
    fill(random(255),random(255),random(255));
    stroke(random(255),random(255),random(255));
    strokeWeight(10);
    ellipse(50,75,50,50);
    ellipse(200,75,50,50);
    rect(50,200,150,25);
    face.resize(230,230);
    if(mousePressed){
      image(face,10,10);
    }
    if(keyPressed&&key=='i'){
      fill(0);
      textFont(font);
      textSize(20);
      text("You found another secret!", 1,150);
    }
    else{
      if(mouseX>200&&mouseY>200){
        fill(0);
        textFont(font);
        textSize(20);
        text("You found a secret!", 35,150);
      }
    }
    noFill();
    strokeWeight(1);
    stroke(255,255,0);
    ellipse(mouseX,mouseY,15,15);
}
