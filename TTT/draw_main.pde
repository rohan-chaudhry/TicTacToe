void draw_main(){
  
  font = createFont("Serif Bold", 32);
  textFont(font);
  
  if (theme == 1){ // day theme 
      background(152,21,27);
    }
    if (theme == 2){ // night theme 
      background(20, 38, 52); 
    }

    blockies(); //background 
    
    //header 
    textSize(200);
    fill(185);
    text("tic tac toe",23, 222);
    fill(235);
    text("tic tac toe",25, 220);
    textSize(30);
    fill(185);
    text("by rohan c.",904, 189); 
    fill(235);
    text("by rohan c.", 905, 188);
    strokeWeight(3);
    strokeCap(ROUND); 

    stroke(185); 
    line(898, 200,1200,200);
    stroke(235); 
    line(899,199, 1200,198);
     
    // play button 
    fill(buttonColor(theme, 550, 650, 425, 475)[0], buttonColor(theme, 550, 650, 425, 475)[1], buttonColor(theme, 550, 650, 425, 475)[2]);    
    rect(550, 425, 100, 54,7); 
    textSize(20);
    fill(255);
    text("press P", 567, 464); //562, 460
} 