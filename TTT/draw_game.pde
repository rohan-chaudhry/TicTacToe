void draw_game(){
  
  font = createFont("Serif Bold", 32);
  textFont(font);
  
  if (theme == 1){ // day theme 
      background(152,21,27);
    }
  if (theme == 2){ // night theme 
      background(20, 38, 52); 
    }
    
    
  // draw the grid 
  if (theme == 1){
      fill(98, 17, 14);
    }
  if (theme == 2){
      fill(35, 88, 14);
    }
    
 // rect(150, 200, 600, 600);
 
    // start at 300,150 
    // end at 600,450
    /*
    square vertices: 
    (300,150), (900,150), (300,450), (900,450) 
    */ 
  smooth();
  stroke(255);
  strokeWeight(6);
  
  // hard code the board 
  rect(300,150,600,600); 
  
  line(500,150,500,750); // vertical left 
  line(700,150,700,750); // vertical right 
  
  line(300,350,900,350); // horizontal upper 
  line(300,550,900,550); // horizontal lower 
  


  
  

    
    
    
    
    
} 