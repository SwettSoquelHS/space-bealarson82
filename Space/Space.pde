//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] particles = new Normal[1000];
Jumbo particle1 = new Jumbo();
Oddball ball = new Oddball();
float speed;

void setup() {
  size(700,700);
  background(0);
  noStroke();
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Normal();
  }
  particle1 = new Jumbo();

} 

void draw() {
  speed = map(mouseX,0,width,0,50);
  background(0);
  translate(width/2,height/2);
  for (int i = 0; i < particles.length; i++) {
    particles[i].update();
    particles[i].show();
  }
  particle1.show();

  
}
