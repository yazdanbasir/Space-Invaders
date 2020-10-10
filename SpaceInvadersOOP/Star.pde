class Star {
  private int x;
  private int y;
  
  Star() {
    x = (int(random(1, width))); // Assigns the star a random x-value between 1 and the width of the screen
    y = (int(random(1, height))); // Assigns the star a random y-value between 1 and the width of the screen
  }
  
  public void display() {
    fill(255);
    circle(x, y, 1.5);
  }
}
