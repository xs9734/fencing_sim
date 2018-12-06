void points(){
  //Player 1 Scoring//
  if(p1==1 && p2==0){
    textAlign(CENTER);
    text("Player 1 has scored!", 500, 680);
    text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,750);
      //Player 1 Victory//
      if(p1pt==5){
        background(bg);
        text("PLAYER 1 HAS WON", 500, 300);
        text("Final score",500,500);
        text("Player 1: " + p1pt + " Player 2: " + p2pt,500,750);
        textSize(20);
        text("Press the Reset Button to continue",500,800);
        textSize(50);
          if(keyPressed){
            p1pt=0;
            p2pt=0;
          }
      }
  }
  //Player 2 Scoring//
  else if(p2==1 && p1==0){
    textAlign(CENTER);
        text("Player 2 has scored!", 500, 680);
    text("Player 1: " + p1pt + " Player 2: " + p2pt,500,750);
      //Player 2 Victory//
      if(p2pt==5){
        background(bg);
        text("PLAYER 2 HAS WON", 500, 300);
        text("Final score",500,500);
        text( "Player 1: " + p1pt + " Player 2: " + p2pt,500,750);
        textSize(20);
        text("Press the Reset Button to continue",500,800);
        textSize(50);
          if(keyPressed){
            p1pt=0;
            p2pt=0;
          }
      }
  }
}
