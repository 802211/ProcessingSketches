
Car c1;
int Frogx = 200;
int Frogy = 350;
void draw(){
background(25,225, 0);  
fill(0, 80, 34);  
ellipse(Frogx, Frogy, 25, 25);   
KeepFrog();

c1.SpeedofCar();
c1.display();

}

void setup(){
size(400, 400);
c1 = new Car(0,250,15);

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
  Frogy = 375;
  }
 else if (Frogy <= 0){
  Frogy = 25;
  }
 else if (Frogx >= 400){
  Frogx = 375;
  }
 else if (Frogx <= 0){
  Frogx = 25;
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
}

}
