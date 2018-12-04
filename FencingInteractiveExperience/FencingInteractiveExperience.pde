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
PFont head;
int p1=0;
int p2=0;
int p1pt=0;
int p2pt=0;
int sec=0;
int min=0;
int msec=0;
int sx=0;
int sy=0;
int millisecs;
int seconds;
int minutes;
boolean startTimer = false;
boolean starter = false;
boolean pts=true;
boolean start=true;
boolean valid=false;

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
 //If not working, uncomment the next two lines and make 
 //sure ~ [XXX] "Krungthep" ~ appears on the list
 //String[] fontList = PFont.list();
 //printArray(fontList);
  head = createFont("Krungthep", 37);
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
  
void keyReleased(){
  if(key == 'a' && valid == true || key == 'a' && valid == true){
    saveFrame("######.jpg"); 
    p2=0;
    p1=1;
    p1pt++;
    points();
    valid = false;
  }
  if(key == 'd' && valid == true || key == 'd' && valid == true){
    saveFrame("######.jpg"); 
    p2=1;
    p1=0;
    p2pt++;
    points();
    valid = false;
  }
}

void keyPressed(){
  if(key == 's' || key == 'S'){ 
    millisecs = 0;
    seconds = 0;
    minutes = 0;
    starter = true;
    valid = true;
  }
  if(key == 'a' || key == 'A' || key == 'D' || key == 'd'){
    starter = false;
  }
  startTimer = starter;
}
