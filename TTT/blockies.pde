void blockies(){ 
  
for (int i = 0; i < blockList.size(); i++){
      blockList.get(i).checkEdge();
      blockList.get(i).update();
      blockList.get(i).display();
    }
    
    int randomNum = ThreadLocalRandom.current().nextInt(0, 12);
    int mili = (int)System.currentTimeMillis();
    if (mili % 10 == 0){
      int newXpos = randomNum*100;
      boolean placeable = true;
      for (int i = 0; i < blockList.size(); i++){
        if (blockList.get(i).xpos == newXpos){
          if (blockList.get(i).ypos < 100){
            placeable = false;
          }
        }
      }
      
      if (placeable){
        blockList.add(new Block(randomNum*100, 0, 2, theme));
      }
    }
    
    for (int i = 0; i < blockList.size(); i++){
      int x = blockList.get(i).xpos;
      int y = blockList.get(i).ypos;
      for (int j = 0; j < blockList.size(); j++){
        if (i != j){
          if (blockList.get(j).xpos == x){
            if (Math.abs(blockList.get(j).ypos - y) < 100){
              blockList.get(i).setSpeed(0);
            }
          }
        }
      }
    }
    
    int counter = 0;
    
    for (int i = 0; i < blockList.size(); i++){
      if (blockList.get(i).ypos >= 799){
        counter++;
      }
    }
    
    if (counter == 12){
      for (int i = 0; i < blockList.size(); i++){
        if (blockList.get(i).ypos >= 799){
          blockList.remove(i);
          i = i-1;
        }
      }
        
    }
    
    
    for (int i = 0; i < blockList.size(); i++){
      if (blockList.get(i).speed == 0){
        boolean found = false;
        for (int j = 0; j < blockList.size(); j++){
          if (i != j){
            if (blockList.get(j).xpos == blockList.get(i).xpos){
              if (blockList.get(j).ypos > blockList.get(i).ypos){
                found = true;
              }
            }           
          }
        }
        if (! found){
          blockList.get(i).setSpeed(2);
        }
      }
    } 
    
    for (int i = 0; i < blockList.size(); i++){
      if ((blockList.get(i).ypos >= 699) && (blockList.get(i).ypos < 800)){
        boolean found = false;
        for (int j = 0; j < blockList.size(); j++){
          if (i != j){
            if (blockList.get(j).xpos == blockList.get(i).xpos){
              if (blockList.get(j).ypos > 798){
                found = true;
              }
            }            
          }
        }
        
        if (!found){
          blockList.get(i).setSpeed(2);
        }
      }
    }
    
} 