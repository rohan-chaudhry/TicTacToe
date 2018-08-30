void win(int col, int row, int p, int numTurns){ // was row, col, p
  int pl = p%2; // input p is counter 
  // add marker, then check if there's a winner or draw 
  // int p represents the player: 1 is p1(x), 2 is p2(o) 
  // row and col are the indices of placement 
  
  moves[row][col] = pl; // add marker 
  
  //check for winner 
  
  //p1 
  
  if( moves[0][0] == 1){
    if((moves[0][1] == 1) && (moves[0][2] ==1)){
      display_winner(1);       
    }
    else if((moves[1][0] == 1) && (moves[2][0] ==1)){
      display_winner(1);
      //player 1 wins 
    }
    else if((moves[1][1] == 1) && (moves[2][2] ==1)){
      display_winner(1);
    } 
  } 
  //p1 verticals 
  else if((moves[0][1]==1) && (moves[1][1]==1) && (moves[2][1]==1)){
    display_winner(1);
  } 
  else if((moves[0][2]==1) && (moves[1][2]==1) && (moves[2][2]==1)){
    display_winner(1);
  } 
  //p1 horizontals 
  else if((moves[1][0]==1) && (moves[1][1]==1) && (moves[1][2]==1)){
    display_winner(1);
  } 
  else if((moves[2][0]==1) && (moves[2][1]==1) && (moves[2][2]==1)){
    display_winner(1);
  }
  else if((moves[0][2]==1) && (moves[1][1]==1) && (moves[2][0]==1)){
    display_winner(1);
  }
  
  //p2 
  
  else if( moves[0][0] == 2){
    if((moves[0][1] == 2) && (moves[0][2] == 2)){
      display_winner(2);
    }
    else if((moves[1][0] == 2) && (moves[2][0] == 2)){
      display_winner(2);
    }
    else if((moves[1][1] == 2) && (moves[2][2] == 2)){
     display_winner(2);
    } 
  } 
  //p1 verticals 
  else if((moves[0][1]== 2) && (moves[1][1]== 2) && (moves[2][1]==2)){
   display_winner(2);
  } 
  else if((moves[0][2]==2) && (moves[1][2]==2) && (moves[2][2]==2)){
    display_winner(2);  
  } 
  //p1 horizontals 
  else if((moves[1][0]==2) && (moves[1][1]== 2) && (moves[1][2]== 2)){
    display_winner(2);
  } 
  else if((moves[2][0]== 2) && (moves[2][1]== 2) && (moves[2][2]== 2)){
    display_winner(2);
  }
  
  if(numTurns > 8){
    display_winner(3); 
    //draw 
  } 
  
    
  
   
  
  
} 