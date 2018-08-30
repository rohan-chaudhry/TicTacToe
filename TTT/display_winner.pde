void display_winner(int p){     
  
      fill(255);
      rect(width/2 - 200,height/2 - 200,400,400); 
      fill(50);
      textSize(50);
      textAlign(CENTER,CENTER); 
           
      if(p==1){//p1 wins
      text("p1 wins", width/2, height/2);
      textSize(30); 
      text("congratulations.\n", width/2, height/2+80);
      textSize(15); 
      text("right-click anywhere to exit.\n", width/2, height/2+140);

      }
      else if(p==2){ //p2 wins 
      text("p2 wins", width/2, height/2);
      textSize(30); 
      text("congratulations.\n", width/2, height/2+80);
      textSize(15); 
      text("right-click anywhere to exit.\n", width/2, height/2+140);
      } 
      
      else{ //draw 
      text("a tie.", width/2, height/2);
      textSize(30); 
      text("equality is real.\n", width/2, height/2+80); 
      textSize(15); 
      text("right-click anywhere to exit.\n", width/2, height/2+140);
      }
      
    if(mousePressed && (mouseButton == RIGHT)){
      exit(); 
    } 
}