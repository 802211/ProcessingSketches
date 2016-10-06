//1. Create a constructor for you hackertyper to initialize your x, y, lineLength and lineSpace
  HackerTyper h = new HackerTyper(10,10,10,10);
  int counter;
  
class HackerTyper {
  int xOffset;
  int yOffset;
  int y = 0; 
  int x = 0;
  int index = 0;
  int lineLength = 4;
  int lineSpace = 30;
  int scroll = 100;
  int cursorColor = 255;
  ArrayList<String> text = new ArrayList<String>();
  ArrayList<String> hackerText = new ArrayList<String>();

/* Constructor goes here. */
HackerTyper(int y, int x, int lineLength, int lineSpace){
this.x=x;
this.y=y;
this.lineLength = lineLength;
this.lineSpace = lineSpace;
}


  /* (Dont change) Adds text to you HackerTyper */
  void add(String t) {
    fill(255,255,255);
    textSize(12);
    hackerText.add(t);
  }

  /*(Dont change) prints out hacker text */
  void printNext() {
    fill(255,255,255);
    textSize(12);
    text.add(hackerText.get(index%hackerText.size()));
    index++;
  }

  /*diplays the access granted popup*/
  void accessGranted() {
    //11. fill in this method to diplany an access granted method on the screen.
  textSize(50);
  fill(0, 255, 0);
    text("Access Granted!", 200, 200);
  }

  /*diplays the access denied popup*/
  void accessDenied() {
    //12. fill in this method to display and access denied message on the screen.
         textSize(50);
  fill(255, 0, 0);
        text("Access Denied!", 100, 100);
        
  }

  /*displays the text*/
  void displayText() {
    //set the size and color of your text
    arrayStuff();
    drawCursor(xOffset, yOffset);
    yOffset=0;
  }

  /*draws cursor*/
  void drawCursor(int xOffset, int offset) {
    strokeWeight(1);

    //13. use the millis() to make your cursor blink every half second
    if(millis()%1000 < 500){
    cursorColor = 52;
    }
     else{
    cursorColor = 255;
    }
    stroke(0, cursorColor, 0);
    line(x+xOffset, y+offset+5, x+xOffset, y+offset-18);
  }

  /*(Dont change) This does array stuff*/
  void arrayStuff() {
    yOffset = 0;
    xOffset = 0; 
    for (String str : text) {
      if (text.indexOf(str)%lineLength==0) {
        yOffset+=lineSpace;
        xOffset=0;
      } 
      text(str, x+xOffset, y+yOffset);
      if (y+yOffset > height-50) {
        y-=scroll;
      }
      xOffset += textWidth(str);
    }
  }

}




void setup() {
  //1. set the size of your canvas // if you're using processing 3 use fullScreen()
fullScreen();
  //2. Make a new instance of Hacker Typer as a member variable

  //3. Add some hacker text to your hackerTyper (Make it look hackerish!)
  h.add("Not a Hacker! Hacker alert! Not a Hacker! Email to parents - I need help! please give me $100! Please give me password! I said please."+ 
  "Virus loading please wait. . . Files detected! Virus loaded! Email to grandpa sending - please give me $100! I need help! Not a Hacker! Hacker alert! Not a Hacker! ");
}

void draw() {
  //4. set the background of your screen
background(0,0,0);
  // 5. call the display text method
      fill(255,255,255);
    textSize(12);
h.displayText();


  //9. if the key counter variable is greater than 50 call the accesss denied method.
if(counter > 50 && counter < 70){
    textSize(50);
  fill(0, 255, 0);
h.accessDenied();
}
//10. if the key counter is greater than 70 call the accesGranted method.
else if(counter >= 70){
    textSize(50);
  fill(0, 255, 0);
h.accessGranted();
}
}

//6. create a key pressed method
void keyPressed(){
h.printNext();
counter = counter+1;

}
//7. call the printNext method from your hacker typer in your keypressed method


//8.  make a member variable for number of keys pressed. and increment your key counter in the keyPressed method.