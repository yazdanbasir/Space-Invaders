class Cannon {
  private float x = width/2;
  private float speed = width/150;
  private float gunW = width/7;
  private float gunH = width/7;
  private float wallGap = height/14;
  private float grassHeight = height * 0.1;
  private int numberOfBullets = 0;
  
  Bullet[] bullet = new Bullet[100]; // Declares an object array bullet of type Bullet with 100 elements
  
  Cannon() {
    gun = loadImage("gun.png");
  }
  
  public void display() {
    stroke(0);
    fill(109, 110, 114);
    circle(x, height - ((grassHeight/2)+10), width/12);
  
    imageMode(CENTER);
    image(gun, x, height - ((grassHeight/2)+20), gunW, gunH);
    
    for  (int i = 0; i < numberOfBullets; i++) {
      bullet[i].display();
    }
  }
  
  public void move() {
    if (keyLeft && x > wallGap) { // wallGap = height/14 is the boundary variable that prevents the gun from going off the screen
      x = x - speed;
    
    } else if (keyRight && x < width - wallGap) {  
      x = x + speed;
    }
    
    for  (int i = 0; i < numberOfBullets; i++) { // This loop ensures that the bullet is drawn wherever the gun is
      bullet[i].move();
    }
  }
  
  public void fire() {
    if (mousePressed && mouseButton == LEFT) {
      if (numberOfBullets < 100) { // numberOfBullets is used to prevent more than 100 bullets from being fired
        
        bullet[numberOfBullets] = new Bullet(x, gunH);
        numberOfBullets = numberOfBullets + 1; // Controls the number of bullets being used
      }
      
    mousePressed = false;
    }
  }
}
