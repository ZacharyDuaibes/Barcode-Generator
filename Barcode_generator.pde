////Barcode
int x = 0, streak = 0;
boolean isLine = true;

void setup(){
  size(400, 200);
  background(255, 255, 255);
  stroke(0);
}

void draw(){
  if (x > width){
    background(255, 255, 255);
    x = 0;
  }
  
  if (isLine){
    if (random(100) > 90){
      isLine = false;
    }
    else{
      streak++;
    }
  } 
  else{
    if (random(100) > 90){
      isLine = true;
    }
    else{
      streak++;
    }
  }
  
  if (streak > 20){
    if (isLine){
      isLine = false;
    }
    else{
      isLine = true;
    }
    streak = 0;
   }
    
  if (isLine){
    line(x, 0, x, width);
  }
  x++;
}
