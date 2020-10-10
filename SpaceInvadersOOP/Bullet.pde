class Bullet {
  private float x;
  private float y;
  private float radius;
  private float speed;
  private float gunH;
  private boolean isExploded;
  
  Bullet(float x, float gunH) {
    this.gunH = gunH; // Uses the value of the variable gunH that has been passed as a parameter from Cannon to ensure that the bullet is drawn where the tip of the gun is
    this.x = x; // Uses the value of the variable x that has been passed as a parameter from Cannon to ensure that the bullet is drawn wherever the gun is
    
    y = height - height/14 - gunH/2; // The y-value of the tip of the gun 
    radius = width/35;
    speed = height/100;
    isExploded = false; // Set to false because the bullet hasn't exploded anything as of yet
  }
  
  public void display() {
    if (!isExploded) { // Only displays the bullet if the alien or gun hasn't exploded yet
      noStroke();
      fill(255);
      circle(x, y, radius);
    }
  }
  
  public void move() {
      y = y - speed; // Moves the bullet up the screen
  }
}
