void body(){
  fill(100);
  pushMatrix();
    box(260,50,60); //Base
    mid_part();
  popMatrix();
  fill(0);
}

void mid_part(){
  translate(0,-50,0);
  rotateY(radians(midAngle));
  if(mousePressed){
    float my = mouseY - cenY;
    float rs = mouseX - posX;
    if( my < 380 - cenY && my > 300- cenY){
      if(rs < 420 && rs > 280){
        fill(0,255,0);
        midAngle = rs/2 +180;
      }
    }
  }
  box(80,50,80); //middle
  fill(255);
  left_arm(20,30,80);
  right_arm(20,30,80);
}

void left_arm(int x, int y, int z){
  pushMatrix();
  rotate(radians(lArmAngle));
  translate(0,0,-z);
  box(x,y,z);
  translate(0,y,y-z);
  
  switch(left){
    case 0:
      if(lArmAngle >-360 && lArmAngle <= -270) lArmAngle-=2;
      else lArmAngle=0;
      break;
    case 1:
      if(lArmAngle >-90) lArmAngle-=2;
      break;
    case 2:
      if(lArmAngle >-180) lArmAngle-=2;
      break;
    case 3:
      if(lArmAngle >-270) lArmAngle-=2;
      break;
  }
  box(x,z,y);
  popMatrix();
}

void right_arm(int x, int y, int z){
  pushMatrix();
  rotate(radians(rArmAngle));
  translate(0,0,z);
  box(x,y,z);
  translate(0,y,z-y);
  switch(rigth){
    case 0:
      if(rArmAngle >-360 && rArmAngle <= -270) rArmAngle-=2;
      else rArmAngle=0;
      break;
    case 1:
      if(rArmAngle >-90) rArmAngle-=2;
      break;
    case 2:
      if(rArmAngle >-180) rArmAngle-=2;
      break;
    case 3:
      if(rArmAngle >-270) rArmAngle-=2;
      break;
  }
  box(x,z,y);
  popMatrix();
}