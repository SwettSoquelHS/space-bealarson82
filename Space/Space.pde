//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] particles = new Normal[400];
Jumbo[] particle1 = new Jumbo[1];
Oddball ball = new Oddball();
float speed;

void setup() {
  size(700,700);
  background(0);
  stroke(255);
  strokeWeight(5);
  
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Normal();
  }
  for (int i = 0; i < particle1.length; i++) {
    particle1[i] = new Jumbo();
  }
} 

void draw() {
  speed = map(mouseX,0,width,0,50);
  background(0);
  translate(width/2,height/2);
  for (int i = 0; i < particles.length; i++) {
    particles[i].update();
    particles[i].draw();
  }
  for (int i = 0; i < particle1.length; i++) {
    particle1[i].update();
    particle1[i].draw();
  }
  ball.draw();


  
}
