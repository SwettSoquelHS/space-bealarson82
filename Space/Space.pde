//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Particle[] particle;

void setup() {
  size(500, 500);
  background(255, 90);
  noStroke();
  particle = new Particle[500];
  for (int i = 0; i < particle.length; i++) {
    int x = (int)(width*(Math.random()));
    int y = (int)(height*(Math.random()));
    int r = (int)(5*Math.random()) + 5;
    particle[i] = new Particle(x, y, r);
  }
} 

void draw() {
  fill(#0F0F0F, 50);
  rect(0, 0, width, height);
  for (int i = 0; i < particle.length; i++) {
    particle[i].show();
  }
}


class Particle {
  float x_pos;
  float y_pos;
  float radius;

  public Particle(float x, float y, float rad) {
    x_pos = x;
    y_pos = y;
    radius = rad;
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(255, 255, 255, 255);
    ellipse(3, 3, radius, radius);
    popMatrix();
  }
}
