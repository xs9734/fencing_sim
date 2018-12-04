void game(){
  println(pts);
  pts=true;
  background(bg);
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
