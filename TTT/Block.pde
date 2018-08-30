class Block{
  int xpos, ypos, speed, theme;
  String[] syms = {"X", "O"}; 
  
  Block(int _x, int _y, int _s, int _t){
    this.xpos = _x;
    this.ypos = _y;
    this.speed = _s;
    this.theme = _t;
  }
  
  Block(){
  }
  
  void display(){
    
    frameRate(30); 
    
    fill(blockColor(this.theme)[0], blockColor(this.theme)[1], blockColor(this.theme)[2]);
    strokeWeight(0);
    textSize(100); 
    text(syms[1], this.xpos+15, this.ypos+90);
    text(syms[0], this.xpos+70, this.ypos-70);
   
  }
  

  void update(){
    this.ypos += this.speed;
  }
  
  void checkEdge(){
    if (this.ypos > 800){
      this.speed = 0;
    }
  }
  
  void setSpeed(int _s){
    this.speed = _s;
  }
  
  int[] blockColor(int theme){
    theme = theme - 1;
    int[][] colors = new int[][]{
    {240, 34, 34},      //day theme X,Os 
    {212,136,114},      //night theme X,Os 

    }; 
    
    int r = colors[theme][0];
    int g = colors[theme][1];
    int b = colors[theme][2];
    int[] result = new int[] {r, g, b};
    return result;
  
  }
}