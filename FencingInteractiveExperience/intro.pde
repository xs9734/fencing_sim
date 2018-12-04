void intro(){
  //UI//
  background(bg);
  image(spark,sx,sy);
  image(spark,sx2,sy2);
  sx=sx+10;
  if(sx>1000){
    sx = -400;
    sy = int(random(100,900));
  }
  sx2=sx2+10;
  if(sx2>1000){
    sx2 = -300;
    sy2 = int(random(100,900));
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
