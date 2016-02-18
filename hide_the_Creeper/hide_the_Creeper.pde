PImage minecraft;
 int creeperX = 555;
 int creeperY = 555;





PImage creeper;
void setup (){
  
size (1852,1000);
minecraft = loadImage("moss.jpg");
minecraft.resize(1852,1000);
background(minecraft);
creeper = loadImage("creeper.jpg");
creeper.resize(5,5);

}
void draw (){
image(creeper, 107, 70);
println(mouseX + " " + mouseY);
if (mousePressed){
fill (200,0,0);
  ellipse(mouseX,mouseY,10,10);

}


}
boolean isNear(int a, int b) {
      if (abs(a - b) < 10)
          return true;
    else
       return false;
}




