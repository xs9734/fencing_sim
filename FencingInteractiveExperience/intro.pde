void intro(){
  background(bg);
  image(spark,sx,sy);
  sx=sx+10;
  if(sx>1000){
    sx = -400;
    sy = int(random(100,900));
  }
  textAlign(CENTER);
  textFont(head);
  textSize(200);
  text("FENCING",500,400);
  textSize(60);
  textAlign(LEFT);
  text("Interactive Experience",58,456);
  textSize(40);
  textAlign(CENTER);
  text("Press Start Button to begin",500,700);
}
