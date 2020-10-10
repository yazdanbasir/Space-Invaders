/*************************
 
 Yazdan Basir 
 
 CS104-02 
 
 Prof. Joann Ordille
 
 Lab 5 - Space Invaders OOP
 
**************************/
PImage gun;
PImage alien1;
PImage alien2;
PImage alien3;
PImage alien4;

boolean keyLeft;
boolean keyRight;

Background background; // Declares an object background of type Background
Bullet[] bullets; // Declares an object array bullets of type Bullet
Cannon cannon; // Declares an object cannon of type Cannon
Invaders invaders; // Declares an object invaders of type Invaders

void setup() {
  size(750, 750);
  
  alien1 = loadImage("alien1.png");
  alien2 = loadImage("alien2.png");  
  alien3 = loadImage("alien3.png");
  alien4 = loadImage("alien4.png");
  
  background = new Background(); // Initializes the objects with regards to their particular type/class
  cannon = new Cannon();
  invaders = new Invaders();
}

void draw() {
  background.display();
 
  cannon.move();
  cannon.display();
  cannon.fire();
  
  invaders.display();
  invaders.move();
}

void keyPressed() { // Used in tandem with keyReleased to change the x-location of the gun with a single key press and prevent the gun from moving across the whole screen if the mouse is pressed just once
    if (keyCode == LEFT) {
      keyLeft = true;
    }
    
    if (keyCode == RIGHT) {
      keyRight = true;
    }
  }

void keyReleased() {
    if (keyCode == LEFT) {
      keyLeft = false;
    }
    
    if (keyCode == RIGHT) {
      keyRight = false;
    }
  }
