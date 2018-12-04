void points(){
  if(p1==1 && p2==0){
  textAlign(CENTER);
  text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,700);
    if(p1pt==5){
      background(bg);
      text("PLAYER 1 HAS WON", 500, 300);
      text("Final score",500,500);
      text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,700);
   }
  }
  else if(p2==1 && p1==0){
  textAlign(CENTER);
  text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,700);
    if(p2pt==5){
      background(bg);
      text("PLAYER 2 HAS WON", 500, 300);
      text("Final score",500,500);
      text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,700);
   }
  }
}
