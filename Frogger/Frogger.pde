
Car c1;
Car c2;
Car c3;
Car c4;
Car c5;
Car c6;
int Frogx = 200;
int Frogy = 375;
void draw(){
background(25,225, 0);  
fill(0, 80, 34);  
ellipse(Frogx, Frogy, 25, 25);   
KeepFrog();

c1.SpeedofCar();
c1.display();
c2.SpeedofCar2();
c2.display();
c3.SpeedofCar();
c3.display();
c4.SpeedofCar();
c4.display();
c5.SpeedofCar2();
c5.display();
c6.SpeedofCar2();
c6.display();

/*
int x = 5; 
int y = 6; 

int addTwo(int num)
{
  return num+2;
}

bool returnEven(int num)
{
  if(num/2 == 0)
  {
    return true; 
  }
  return false; 
}

if(x || y)

if(addTwo(x) || addTwo(y)) --> if( 7 || 8) 

if(returnEven(x) || returnEven(y)) ---> if(false || true) 
*/

if (intersects(c1) || intersects(c2) || intersects(c3) || intersects(c4) || intersects(c5) || intersects(c6)){
text("You lost!", 200, 200);
textSize(24); 
Frogy = 400;
Frogx = 200;
}
if (Frogy == 0){
text("you won!", 200, 200);
textSize(24); 
Frogy = 400;
Frogx = 200;
}
if ((Frogy == 52) && (Frogx == 52)){
text("You have won! The frog has entered a secret portal", 200, 200);
textSize(24); 
Frogy = 400;
Frogx = 200;
}
}

boolean intersects(Car car) {
if ((Frogy > car.getY() && Frogy < car.getY()+50) && (Frogx > car.getX() && Frogx < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}

void setup(){
size(400, 400);
c1 = new Car(0,50,3);
c2 = new Car(400,100,6);
c3 = new Car(0,150,5);
c4 = new Car(0,200,2);
c5 = new Car(400,250,4);
c6 = new Car(400,300,7);

}
void keyPressed()
{
  
  if(key == CODED){
      if(keyCode == UP)
      {
      //Frog Y position goes up
      Frogy -= 30; //print("hi");
      }
      else if(keyCode == DOWN)
      {
        //Frog Y position goes down 
        Frogy += 30;
      }
      else if(keyCode == RIGHT)
      {
       //Frog X position goes right
       Frogx += 30;
      }
      else if(keyCode == LEFT)
      {
        //Frog X position goes left
        Frogx -= 30;
      }
  }
}
void KeepFrog(){

  if (Frogy >= 400){
  Frogy = 400;
  }
 else if (Frogy <= 0){
  Frogy = 0;
  }
 else if (Frogx >= 400){
  Frogx = 400;
  }
 else if (Frogx <= 0){
  Frogx = 0;
  }
}
class Car{
  int xpos;
  int ypos;
  int carS;
  
  Car(int cx,int cy, int cs){
  xpos = cx;
  ypos = cy;
 carS = cs;
 }
 //int x = (int)random(50);
 //int r = (int)random(300);
//int Carx = 0;
//int Cary = r;
int Carl = 60;
//int Cars; 
  void display() 
  {
    fill(225,0,0);
    rect(xpos , ypos, Carl, 50);
  }

void SpeedofCar(){
xpos += carS;
if (xpos >= 400){
xpos = 0;
}
}
void SpeedofCar2(){
xpos -= carS;
if (xpos <= 0){
xpos = 400;
}
}
int getY(){
  return ypos;
}
int getX(){
 return xpos;
}
int getSize(){
 return Carl;
}
}
