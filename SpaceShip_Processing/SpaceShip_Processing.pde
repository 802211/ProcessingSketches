
 //SpaceShip s = new SpaceShip(250,750);
    SpaceShip s = new SpaceShip(250,750);

 class SpaceShip{
    int X;
 int Y;
SpaceShip(int X, int Y){
this.X=X;
this.Y=Y;
}
 
 int getY(){
 return this.Y;
 }
 void setY(int Y){
 this.Y=Y;
 }
 
 int getX(){
 return this.X;
 }
 void setX(int X){
 this.X=X;
 }
 
  void display() 
  {
    fill(0,255,0);
    rect(X, Y, 50, 50);
}
 }
 class Bullet{
   int bX;
   int bY;
 Bullet(int bX, int bY){
this.bX=bX;
this.bY=bY;
}
 
 
 
 }
 void keyPressed()
{
  if(key == CODED){
      if(keyCode == RIGHT)
      {
      //spaceship x position goes right
      s.setX(s.getX()+20);
      }
      else if(keyCode == LEFT)
      {
        //spaceship y position goes left
      s.setX(s.getX()-20);
      }
}
 }
 
void JailSpaceShip(){
if(s.getX() <= 25){
  s.setX(25);
}
else if(s.getX() >= 440){
  s.setX(440);
}
}
void setup(){
size(500,800);



}
void draw(){
background(0,0,175);
  s.display();
 JailSpaceShip();

  
}