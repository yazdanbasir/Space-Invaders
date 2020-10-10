class Invaders {
  
  PImage alien1;
  PImage alien2;
  PImage alien3;
  PImage alien4;
  
  private float gap;
  private float alienW;
  private float alienH;
  
  Invader[] alienOne = new Invader[6]; // Declares an object array of type Invader
  Invader[] alienTwo = new Invader[6];
  Invader[] alienThree = new Invader[6];
  Invader[] alienFour = new Invader[6];
  
  Invaders() {
    alien1 = loadImage("alien1.png");
    alien2 = loadImage("alien2.png");  
    alien3 = loadImage("alien3.png");
    alien4 = loadImage("alien4.png");
    
    gap = width/75;
    alienW = (width - (7 * gap))/8;
    alienH = alienW;
     
    for (int i = 0; i < 6; i++) { // Assigns the initial x-value, y-value, and filename of each alien to evenly space them across the screen
      
      alienOne[i] = new Invader(((3/2) * gap) + (i+1) * (7/2) * gap + (2 * i + 1) * (alienW/2), - (6 * gap) - (alienH/2), alien1);
      alienTwo[i] = new Invader(((3/2) * gap) + (i+1) * (7/2) * gap + (2 * i + 1) * (alienW/2), - (14 * gap) - (3 * (alienH/2)), alien2);
      alienThree[i] = new Invader(((3/2) * gap) + (i+1) * (7/2) * gap + (2 * i + 1) * (alienW/2), - (22 * gap) - (5 * (alienH/2)), alien3);
      alienFour[i] = new Invader(((3/2) * gap) + (i+1) * (7/2) * gap + (2 * i + 1) * (alienW/2), - (30 * gap) - (7 * (alienH/2)), alien4);
    }
  }
  
  public void display() {
    for  (int i = 0; i < 6; i++) { // Draws the aliens on the screen using the display() method from Invader
      alienOne[i].display(); 
      alienTwo[i].display();
      alienThree[i].display();
      alienFour[i].display();
    }
  }
  
 public void move() {  
    for (int i = 0; i < 6; i++) { // Moves the aliens down the screen using the move() method from Invader
      alienOne[i].move();
      alienTwo[i].move();
      alienThree[i].move();
      alienFour[i].move();
    }
  }
}
