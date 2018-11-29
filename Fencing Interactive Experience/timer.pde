void timer(){
  if(startTimer){
    if(int(millis()/100) % 10 != millisecs){
      millisecs++;
    }
    if(millisecs >= 10){
      millisecs -= 10;
      seconds++;
    }
    if(seconds >= 60){
      seconds -= 60;
      minutes++;
    }
  }
  textAlign(CENTER);
  fill(255);
  textSize(50);
  text(nf(minutes, 2) + ":" + nf(seconds, 2) + "." + nf(millisecs, 1) , 500, 600);
}
