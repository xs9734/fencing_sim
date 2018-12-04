void timer(){
  if(startTimer){
    //Increase milliseconds//
    if(int(millis()/100) % 10 != millisecs){
      millisecs++;
    }
    //Increase seconds//
    if(millisecs >= 10){
      millisecs -= 10;
      seconds++;
    }
    //Increase minutes//
    if(seconds >= 60){
      seconds -= 60;
      minutes++;
    }
  }
  //UI//
  textAlign(CENTER);
  fill(255);
  textSize(50);
  text(nf(minutes, 2) + ":" + nf(seconds, 2) + "." + nf(millisecs, 1) , 500, 600);
}
