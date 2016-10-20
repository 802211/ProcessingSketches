
 //SpaceShip s = new SpaceShip(250,750);
  
    ArrayList <Bullet> arrayOfBullets = new ArrayList <Bullet>();

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
 
int getbX(){
return this.bX;
}
void setbX(int bX){
this.bX = bX;
}
int getbY(){
return this.bY;
}
void setbY(int bY){
this.bY = bY;
}
void moveY(){
bY = bY - 5;
}
 void display(){
     stroke(255);
    point(bX,bY);
}

}



 void moveAllBullets(){
for(Bullet b:arrayOfBullets){
b.moveY();
}
 }
 void displayAllBullets(){
 for(Bullet b:arrayOfBullets){
 b.display();
 }
 } 
 SpaceShip s = new SpaceShip(250,750);
 
 
 
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
 else if(keyPressed && key == ' ')
  {
    //create a new bullet object
 
    Bullet b = new Bullet(s.getX(),s.getY());


    //add it to the arraylist
   arrayOfBullets.add(b);
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
displayAllBullets(); 
moveAllBullets();
 
}