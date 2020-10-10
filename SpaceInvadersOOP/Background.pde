class Background {
  
  private float grassHeight = height * 0.1;
  private float skyHeight = height * 0.9;
  private color skyColor = color(80, 80, 255);
  private color grassColor = color(0, 180, 0);
  private int numberOfStars = ((width * height) / 1000);
  
  Star[] stars = new Star[numberOfStars]; // Creates an object array stars of type Star
  
  Background() {
    for (int i = 0; i < numberOfStars; i++) {
      stars[i] = new Star(); // Initializes the 0.1% stars that have to be displayed
    }
  }
  
  public void display() {
    noStroke();
    
    fill(skyColor);
    rect(0, 0, width, skyHeight);
  
    for (int i = 0; i < numberOfStars; i++) {
      stars[i].display();
      
    fill(grassColor);
    rect(0, skyHeight, width, grassHeight); // The grass is displayed after stars and sky so that the grass is drawn over the stars and no stars show up on the grass
    }
  }
  
}
