// Tic Tac Toe by rohan chaudhry 

import java.util.concurrent.ThreadLocalRandom;
ArrayList<Block> blockList = new ArrayList<Block>();
boolean isPaused, mainMenu, game, themeScreen, store, quit, scores, about;
int theme = 1;
PFont font;
int[] xvals = {300, 500, 700}; 
int[] yvals = {150, 350, 550}; 
int counter = 1; 
int[][] moves = {{0,0,0},{0,0,0},{0,0,0}}; //holds moves 
int numTurns= 0; 

boolean buttonCheck(int x1, int x2, int y1, int y2){
  if ((mouseX > x1) && (mouseX < x2) && (mouseY > y1) && (mouseY < y2)){
    return true;
  }
  else{
    return false;
  } 
}

int[] buttonColor(int theme, int x1, int x2, int y1, int y2){
  theme = theme - 1;
  
  int[][] unpressed = new int[][]{
    {144, 12, 7},       //theme 1 (day theme)
    {126,136,137},      //theme 2 (night theme) 
  };
  int[][] pressed = new int[][]{
    {196, 25, 16},      //clicked day theme 
    {189,199,193},      //clicked night theme    
  };
  if (buttonCheck(x1, x2, y1, y2)){
    int r = pressed[theme][0];
    int g = pressed[theme][1];
    int b = pressed[theme][2];
    int[] result = new int[] {r, g, b};
    return result;    
  }else{
    int r = unpressed[theme][0];
    int g = unpressed[theme][1];
    int b = unpressed[theme][2];
    int[] result = new int[] {r, g, b};
    return result;    
  }
}

void setup(){ 
  // a main menu --> play, quit
  // 2 player only for rn
  // a timer when playing  (?) 
  // mute buttons 
  // day night theme buttons 
  size(1200,900);
  mainMenu = true; // starts at main menu   
  // game = true; 
  for (int i = 0; i < 3; i++){
    int randomNum = ThreadLocalRandom.current().nextInt(0, 12);
    blockList.add(i, new Block(randomNum*100, 0, 2, theme));
  }   
  smooth();
} 

void keyPressed(){
  if((keyCode == 'p') || (keyCode == 'P')){
    mainMenu = false; 
    game = true; 
    draw_game();
  }   
  if((keyCode == 't') || (keyCode == 'T')){
    theme = (theme + 1);
    if(theme > 2){
      theme = theme%2; 
    } 
  }  
} 

void draw() { 
  if (mainMenu){
    draw_main();     
  }  
  if (game){    
    for(int i = 0; i<3; i+=1){
      for( int j = 0; j<3; j+=1){
        noFill();
        noStroke(); 
        rect(xvals[i], yvals[j], 200,200); 
      } 
    } 
    // play_game(); 
  } 
} 

void mousePressed(){ 
  
  if(mainMenu){
    if(((550 < mouseX) && (mouseX< 650)) && ((425<mouseY)&&(mouseY<480))){
      mainMenu= false; 
      game = true;
      draw_game(); 
    }   
  } 
  
  if(game){
    
    if(buttonCheck(xvals[0], xvals[1], yvals[0], yvals[1])){
      //if empty: do sym 
      sym(xvals[0], yvals[0], counter);
      win(0, 0, counter,numTurns);
      numTurns++; 
    } 
    if(buttonCheck(xvals[1], xvals[2], yvals[0], yvals[1])){
      sym(xvals[1], yvals[0], counter);
      win(1, 0, counter,numTurns);
      numTurns++; 
    }
    if(buttonCheck(xvals[2], 900, yvals[0], yvals[1])){
      sym(xvals[2], yvals[0], counter);
      win(2, 0, counter,numTurns); 
      numTurns++; 
    }
    if(buttonCheck(xvals[0], xvals[1], yvals[1], yvals[2])){
      sym(xvals[0], yvals[1], counter);
      win(0, 1, counter,numTurns);
      numTurns++; 
    }
    if(buttonCheck(xvals[1], xvals[2], yvals[1], yvals[2])){
      sym(xvals[1], yvals[1], counter);
      win(1, 1, counter,numTurns);
      numTurns++; 
    }
    if(buttonCheck(xvals[2], 900, yvals[1], yvals[2])){
      sym(xvals[2], yvals[1], counter);
      win(2, 1, counter,numTurns);
      numTurns++; 
    }
    if(buttonCheck(xvals[0], xvals[1], yvals[2], 750)){
      sym(xvals[0], yvals[2], counter);
      win(0, 2, counter,numTurns);
      numTurns++; 
    }
    if(buttonCheck(xvals[1], xvals[2], yvals[2], 750)){
      sym(xvals[1], yvals[2], counter);
      win(1, 2, counter,numTurns);
      numTurns++; 
    }
    if(buttonCheck(xvals[2], 900, yvals[2], 750)){
      sym(xvals[2], yvals[2], counter);
      win(2, 2, counter,numTurns);
      numTurns++;    
    }
     
     counter+=1;     
     } 
} 