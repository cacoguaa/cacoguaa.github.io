void head(){
  fill(255);
  noStroke();
  pushMatrix();
    translate(0,-100,0);
    direction();
    sphere(50);
    eyes();
  popMatrix();
  stroke(1);
  fill(0);
}

void eyes(){
  fill(0,0,255);
  pushMatrix();
    translate(40,-15,10);
    sphere(10);
  popMatrix();
  pushMatrix();
    translate(40,-15,-10);
    sphere(10);
  popMatrix();
  fill(0);
}