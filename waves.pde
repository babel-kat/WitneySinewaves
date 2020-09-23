
Waveforms w;

void setup() {
  size(800, 1000);
  w = new Waveforms();
}

void draw() {
  
  background(0);
  pushMatrix();
  translate(-40, 0);
  w.display();
  //stroke(255);
  //line(0, height /2, width + 40, height/2);
  popMatrix();
  
  saveFrame("recreation_###.png");
}
