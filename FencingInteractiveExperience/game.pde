void game(){
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
  pts=true;
  if(cam.available()){
    cam.read();
  }
  textAlign(CENTER);
  text("PLAYER 1",225,60);
  image(cam, 65,70);
  text("PLAYER 2",775,60);
  image(cam2,615,70);
  timer();
}
