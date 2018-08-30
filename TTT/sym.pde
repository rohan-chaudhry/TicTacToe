void sym(int x,int y,int counter){
  // check if there is already a letter in spot 
  String out = " "; 
  
  if( counter%2 == 1){
     out = "X"; 
  } 
  else{
     out = "O"; 
  } 
  
  textSize(100); 
  fill(0); 
  text(out, x+67, y+140); 
  
} 