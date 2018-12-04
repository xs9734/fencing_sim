/// KEYBINDINGS ///////////////////////////// //<>//
//                                         //
//  A = Score Player 1 (Sword Sensor P1)   //
//  D = Score Player 2 (Sword Sensor P2)   //
//  S = Reseter (RESET BUTTON)             //
//                                         //
/////////////////////////////////////////////
import processing.video.*;
import ddf.minim.*;
 
Minim minim;
AudioPlayer song;
Capture cam;

//Background & Text//
PImage bg,spark,cam2;
PFont head;
//Scoring//
int p1=0;
int p2=0;
int p1pt=0;
int p2pt=0;
boolean valid=false;
boolean starter = false;
boolean pts=true;
boolean start=true;
//Timer//
int millisecs;
int seconds;
int minutes;
boolean startTimer = false;
//UI Dynamic elements//
int sx=0; 
int sy=0;
int sx2=0;
int sy2=0;

void setup(){
  size(1000, 1000);
  frameRate(60);
  //Music//
  minim = new Minim(this);
  song = minim.loadFile("assets/Operatic_3.mp3");
  song.play();
  //UI//
  bg = loadImage("assets/back.png");
  spark = loadImage("assets/line.png");
  textAlign(CENTER);
  textSize(50);
  head = createFont("Krungthep", 37);
         //If not working, uncomment the next two lines and make 
         //sure ~ [XXX] "Krungthep" ~ appears on the list
         //String[] fontList = PFont.list();
         //printArray(fontList);
  //Camera//
  cam2 = loadImage("assets/cam2_small.png");
  cam = new Capture(this, 320, 240, 30);
  cam.start();
}

void draw(){
    //console//
    println(mouseX);
    println(mouseY);
    //intro//
    if(start==true){
      p1pt=0;
      p2pt=0;
      intro();
    }
    if(key == 's' || key == 'S'){
      start=false;
    }
    //begin game//
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
  //Scoring//
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
  //reset timer//
  if(key == 's' || key == 'S'){ 
    millisecs = 0;
    seconds = 0;
    minutes = 0;
    starter = true;
    valid = true;
  }
  //block from accidentally scoring without resetting//
  if(key == 'a' || key == 'A' || key == 'D' || key == 'd'){
    starter = false;
  }
  startTimer = starter;
}
