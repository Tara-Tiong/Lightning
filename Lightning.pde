int startX = 50;
int startY = 0;
int endX = 50;
int endY = 150;
int up = 0;
void setup() {
  size(500,500);
  background(50);
  strokeWeight(3);
  frameRate(4);
}


void draw() {
  noFill();
  float blue = 200;
  for (int i = 0; i<500; i++){
    stroke(10, 10,blue,200);
    line(0,i,800,i);
    blue -= (255/500.0);
  }  
  rect(0, 0, 500, 500);
  if (up<=0){
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    up+=1;  
}

  while(endX < 500){
    endX = startX + ((int)(Math.random()*50)-20);
    endY = startY + ((int)(Math.random()*10)+10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed() {
  startX = 200;
  startY = 0;
  endX = 50;
  endY = 150;
  up=0;
}
