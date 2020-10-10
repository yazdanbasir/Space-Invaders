class Invader {
  PImage alien;
  
  public float x;
  public float y;
  public float gap = width/75;
  public float alienW = (width - (7 * gap))/8;
  public float alienH = alienW;  
  public float alienSpeed = height/350;
  
  Invader(float x, float y, PImage picture) { // Takes the x position, y position, and filename of the image as passed down from Invaders
    this.x = x;
    this.y = y;
    this.alien = picture;
  }
  
  public void display() {
    imageMode(CENTER);
    image(alien, x, y, alienW, alienH);
  }
  
  public void move() {
    y = y + alienSpeed; // Moves the aliens down the screen
  }
}
