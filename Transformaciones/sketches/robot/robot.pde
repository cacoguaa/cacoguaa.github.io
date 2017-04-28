int aceleration;
int posX;

float midAngle;
float botAngle;
float cenX;
float cenY;
float rArmAngle;
float lArmAngle;
float dir;
float genViewX;
float genViewY;

byte rigth;
byte left;

boolean camera;
void setup() {
  size(800, 800, P3D);
  aceleration = 0;
  camera = false;
}

void draw() {
  background(0);
  if(camera)camera(mouseX, (width/2), (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  cenX = 400;
  cenY = 400;
  robotStruct(cenX,cenY);
}

void robotStruct(float x, float y){
  pushMatrix();
    translate(x,y);
    rotateY(genViewY);
    rotateZ(genViewX);
    pushMatrix();
      move();
      translate(posX,0,0);
      head();
      body();
      legs();
    popMatrix();
  popMatrix();
}

void move(){
  if(posX+aceleration < width/2 && posX+aceleration >= 0-width/3)posX += aceleration;
  else aceleration = 0;
}

void direction(){
  rotateY(radians(dir));
}

void keyPressed() {
  if( key == 'a' || key == 'A'){
    genViewY += 0.3;
  }
  if( key == 'c' || key == 'C'){
    if(camera == true) camera = false;
    else camera = true;
  }
  if( key == 'd' || key == 'D'){
    genViewY -= 0.3;
  }
  if( key == 'w' || key == 'W'){
    genViewX += 0.3;
  }
  if( key == 's' || key == 'S'){
    genViewX -= 0.3;
  }
  if( key == 'e' || key == 'E'){
    switch(rigth){
      case 0:
        rigth = 1;
        break;
      case 1:
        rigth = 2;
        break;
      case 2:
        rigth = 3;
        break;
      case 3:
        rigth = 0;
        break;
    }
  }
  if( key == 'q' || key == 'Q'){
    switch(left){
      case 0:
        left = 1;
        break;
      case 1:
        left = 2;
        break;
      case 2:
        left = 3;
        break;
      case 3:
        left = 0;
        break;
    }
  }
  if (key == CODED) {
    if (keyCode == UP) {
      aceleration += 2;
    } else if (keyCode == DOWN) {
      aceleration -= 2;
    } else if (keyCode == LEFT) {
      dir += 20;
    } else if (keyCode == RIGHT) {
      dir -= 20;
    } 
  }
}