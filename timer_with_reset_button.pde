int millisecs;
int seconds;
int minutes;
int size;
int a;
int A;
int b;
int B;
boolean start = false;
boolean starter;
void setup(){
  size(1000, 1000);
  textAlign(CENTER);
}
void draw(){
  background(0);
  
  if(start){
  if (int(millis()/100)  % 10 != millisecs){
    millisecs++;
    
  }
  if (millisecs >= 10){
    millisecs -= 10;
    seconds++;
  }
  if (seconds >= 60){
    seconds -= 60;
    minutes++;
  }
  }
  //view
  textAlign(CENTER);
  fill(255);
  textSize(100);
  text(nf(minutes, 2) + ":" + nf(seconds, 2) + "." + nf(millisecs, 1) , width/2, height/2);
}


void keyPressed(){
  if(key == 'r'){
    millisecs = 0;
    seconds = 0;
    minutes = 0;
     if(key == 'a' || key == 'A'){ 
      starter = true;
    }
    if(key == 'b' || key == 'B'){
      starter = false;
    }
  start = starter;
}
  }
