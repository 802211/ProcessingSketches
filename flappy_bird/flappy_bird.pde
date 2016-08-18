float X = 400;
float Y = 200;
float YVelocity = 1;
float gravity = 0.5;
float r = random (650);
float x2 = 1000;
float y2 = 0;
float pipeX = 1;
void setup(){
size(1750,800);



}

void draw(){
YVelocity += gravity;
  Y+=YVelocity;
  background(0,0,225);
fill(0,225,0);
ellipse(X,Y,50,50);
x2 -= 5;
fill(225, 0, 0);
rect(x2, y2,100, r);
if (x2 <= 0){
x2 = 1750;
r = random(650);
}
 if (intersects(X,Y,x2,y2,r) == true){
 exit();
 }
 
  
 }
 
boolean intersects(float birdX, float birdY, float paddleX,float paddleY, float paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}

void mousePressed(){
YVelocity = -10;
}
