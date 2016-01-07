PImage bucket;
PImage sky;
PImage rain;
float r1X;
int r1Y;
float r2X;
int r2Y;
int bx;
int score=0;
int time=0;
int ti=0;
int rm=0;
boolean go=false;
void setup(){
  bucket=loadImage("bucket.png");
  sky=loadImage("cloudysky.jpg");
  rain=loadImage("rain.png");
  size(1261,794);
  bx=580;
  r1Y=-50;
  r2Y=-500;
  r1X=100;
  r2X=800;
}
void draw(){
  if(go==false){
    ti++;
    if(ti==50){
    time++;
    ti=0;
    }
    background(sky);
    if(keyPressed&&keyCode==RIGHT&&bx<1161){
      bx+=10;
    }
    if(keyPressed&&keyCode==LEFT&&bx>0){
      bx-=10;
    }
    rain.resize(29,40);
    bucket.resize(100,100);
    image(bucket,bx,700);
    image(rain,r1X,r1Y); 
    image(rain,r2X,r2Y); 
    r1Y+=5;
    r2Y+=5;
    if(r1Y>800){
      r1Y=-50;
      r1X=random(1150);
      if(score>0){
        score--;
      }
      rm++;
    }
    if(r2Y>800){
      r2Y=-50;
      r2X=random(1150);
      if(score>0){
        score--;
      }
    rm++;
    }
    if(r2Y+14>700&&r2X>bx-20&&r2X<bx+120){
      r2Y=-50;
      r2X=random(1150);
      score+=1;
    }
    if(r1Y+14>700&&r1X>bx-20&&r1X<bx+120){
      r1Y=-50;
      r1X=random(1150);
      score+=1;
    }
    fill(255,0,0);
    textSize(20);
    text(score,10,20);
    text(time,10,40);
    if(rm>9){
      go=true;
    }
  }
  if(go==true){
    background(sky);
    textSize(100);
    text("Game Over",350,200);
    textSize(20);
    text("You missed too many raindrops!",450,400);
    text("Score: "+score+" Time: "+time,525,500);
    fill(0,255,0);
    rect(550,600,110,50);
    fill(0);
    text("Restart",570,635);
    fill(255,0,0);
    if(mousePressed&&mouseX>550&&mouseY>600&&mouseX<660&&mouseY<650){
      score=0;
      rm=0;
      time=0;
      go=false;
      r1Y=-50;
      r2Y=-500;
      r1X=100;
      r2X=800;
      bx=580;
    }
  }
}

