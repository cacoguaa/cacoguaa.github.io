
void legs(){
  stroke(255);
  strokeWeight(5);
  back_wheels(-100,300,60,100);
  forward_wheel(100,300,60,100);
  strokeWeight(1);
  stroke(1);
}

void back_wheels(int x, int y, int z, int sz){
  pushMatrix();
    translate(x,0,0);
    rotateZ(aceleration * frameCount*radians(90) / 250);
    box(10,10,(z*2)+10); //Axis
    wheel(x,y,z,sz);
    wheel(x,y,-z,sz);
  popMatrix();
}

void forward_wheel(int x, int y, int z, int sz){
  pushMatrix();
    translate(x,0,0);
    rotateZ(aceleration * frameCount*radians(90) / 250);
    box(10,10,(z*2)+10); //Axis
    direction_wheel(x,y,z,sz);
    direction_wheel(x,y,-z,sz);
  popMatrix();
}

void direction_wheel(int x, int y, int z, int sz){
  float ratio = sz/2;
  if(mousePressed){
    float my = mouseY - cenY;
    float rs = mouseX - posX;
    if( my < 600 - cenY && my > 380- cenY){
      if(rs < 590 && rs > 530){
        fill(0,255,0);
        botAngle = rs/90;
      }
    }
  }
  pushMatrix();
    translate(0,0,z);
    rotateY(botAngle);
    pushMatrix();
      translate(0,0,5);
      ellipse(0,0,sz,sz);
      line(0,0,ratio,0);
      line(0,0,-ratio,0);
      line(0,0,0,ratio);
      line(0,0,0,-ratio);
    popMatrix();
    pushMatrix();
      translate(0,0,-5);
      ellipse(0,0,sz,sz);
      line(0,0,ratio,0);
      line(0,0,-ratio,0);
      line(0,0,0,ratio);
      line(0,0,0,-ratio);
    popMatrix();
  popMatrix();

}

void wheel(int x, int y, int z, int sz){
  float ratio = sz/2;
  pushMatrix();
    translate(0,0,z);
    pushMatrix();
      ellipse(0,0,sz,sz);
      line(0,0,ratio,0);
      line(0,0,-ratio,0);
      line(0,0,0,ratio);
      line(0,0,0,-ratio);
    popMatrix();
    pushMatrix();
      translate(0,0,-5);
      ellipse(0,0,sz,sz);
      line(0,0,ratio,0);
      line(0,0,-ratio,0);
      line(0,0,0,ratio);
      line(0,0,0,-ratio);
    popMatrix();
  popMatrix();

}