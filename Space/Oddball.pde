class Oddball{
  float x = 100;
  float y = 100;
  float angle1 = 0.0;


  void Oddball() {
    x = 100;
    y = 100;
    angle1 = 0.0;
  }

  void show(){
    float dx = mouseX - x;
    float dy = mouseY - y;
    angle1 = atan2(dy, dx);  
    x = mouseX - (cos(angle1));
    y = mouseY - (sin(angle1));

    ellipse(x, y, 60, 60);
  }
}
