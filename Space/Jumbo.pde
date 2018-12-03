class Jumbo{
  float x;
  float y;
  float z;
  float pz;
  
  Jumbo() {
    x = random(-width/8,width/8);
    y = random(-height/8,height/8);
    z = random(width/8);
    pz = z;
  }  
  
  void update(){
    z = z - speed;
    if(z < 1){
      z = width/8;
      x = random(-width/8, width/8);
      y = random(-height/8,height/8);
      pz = z;
    }
  }
  
  void show(){
    
    float newX = map(x / z, 0, 1, 0, width/2);
    float newY = map(y / z, 0, 1, 0, height/2);;
    
    float range = map(z,0,width/2,16,0);
    ellipse(newX*15,newY*15,range*15,range*15);
    
    float prevX = map(x/pz,0,1,0,width/2);
    float prevY = map(y/pz,0,1,0,height/2);
    
    pz = z;
    
    stroke(255);
    line(prevX,prevY,newX,newY);
  }
  
}
  
  
