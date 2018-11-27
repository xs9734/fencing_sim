/// KEYBINDINGS ///////////////////////////// //<>//
//                                         //
//  A = Score Player 1 (Sword Sensor)      //
//  D = Score Player 2 (Sword Sensor)      //
//  S = Reseter (Button to Restart game)   //
//                                         //
/////////////////////////////////////////////
import processing.video.*;
import ddf.minim.*;
 
Minim minim;
AudioPlayer song;
Capture cam;

PImage bg,spark,cam2;
PFont Head;
int p1=0;
int p2=0;
int p1pt=0;
int p2pt=0;
int sec=0;
int min=0;
int msec=0;
int sx=0;
int sy=0;
boolean pts=true;
boolean start=true;
void setup(){
  
  minim = new Minim(this);
 
  song = minim.loadFile("assets/Operatic_3.mp3");
  song.play();
  
frameRate(60);
 spark = loadImage("assets/line.png");
 bg = loadImage("assets/back.png");
 cam2 = loadImage("assets/cam2_small.png");
 size(1000, 1000);
 cam = new Capture(this, 320, 240, 30);
 cam.start();
 textAlign(CENTER);
 textSize(50);
 //If not working, uncomment the next to lines and make 
 //sure ~ [XXX] "Krungthep" ~ appears on the list
 //String[] fontList = PFont.list();
 //printArray(fontList);
 Head = createFont("Krungthep", 37);

}

void draw(){
    println(mouseX);
    println(mouseY);
    if(start==true){
    p1pt=0;
    p2pt=0;
    intro();
    }
    if(key == 's' || key == 'S'){
    start=false;
    }
    if(start==false){
    game();
    if(key == 'a' || key == 'A'){
    p2=0;
    p1=1;
    points();
    }
    else if(key == 'd' || key == 'D'){
    p1=0;
    p2=1;
    points();
    }
    }
}

void game(){
  println(pts);
  pts=true;
background(bg);
  if(cam.available()) {
  cam.read();
  }
  textAlign(CENTER);
  text("PLAYER 1",225,60);
  image(cam, 65,70);
  text("PLAYER 2",775,60);
  image(cam2,615,70);
  timer();
}
  
void points(){

  if(p1==1 && p2==0){
  textAlign(CENTER);
  text("Player 1 Scored a point",500,500);
  text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,700);
  }
  else if(p2==1 && p1==0){
  textAlign(CENTER);
  text("Player 2 Scored a point",500,500);
  text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,700);
  }
  if(key == 'w' || key == 'W'){
  p1=0;
  p2=0;
  game();
  }
}

void timer(){
  msec=millis() / 100;
  sec=millis() / 1000;
  min=millis() / 60000;
  text( min + ":" + sec + ":" + msec , 500, 750);
}

void keyReleased(){
  if(key == 'a' || key == 'A'){
        saveFrame("######.jpg"); 
  p2=0;
  p1=1;
  p1pt++;
  points();
  }
  if(key == 'd' || key == 'D'){
        saveFrame("######.jpg"); 
  p2=1;
  p1=0;
  p2pt++;
  points();
  }
}

void intro(){
  background(bg);
  image(spark,sx,sy);
  sx=sx+10;
  if(sx>1000){
  sx = -400;
  sy = int(random(100,900));
  }
  textAlign(CENTER);
  textFont(Head);
  textSize(200);
  text("FENCING",500,400);
  textSize(60);
  textAlign(LEFT);
  text("Interactive Experience",58,456);
  textSize(40);
    textAlign(CENTER);
  text("Press Start Button to begin",500,700);
}
