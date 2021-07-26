class Trian {
  float col1;
  float col2;
  float col3;
  float [] qVertex= new float [20];
  float centerX;
  float centerY;
  float angle1=0;
  float a1;
  float a2;
  float a3;
  float a4;
  float a5;
  float a6;
  float finalX;
  float finalY;
  boolean victory;
  float anglefinal;
  int sol=0;
  


  Trian  (float [] vertex) {
    col1=vertex[6];
    col2=vertex[7];
    col3=vertex[8];
    centerX=vertex[9];
    centerY=vertex[10];
    a1=vertex[11];
    a2=vertex[12];
    a3=vertex[13];
    a4=vertex[14];
    a5=vertex[15];
    a6=vertex[16];
    anglefinal=vertex[19];
    finalX=vertex[17];
    finalY=vertex[18];
    for (int i=0; i<11; i++) {
      qVertex[i]=vertex[i];
    }
  } 

  void rotation() {
    if ((dist(centerX, centerY, mouseX, mouseY)<30)&&(keyPressed)) {
      if (key=='r') {
        angle1=(angle1+radians(45))%(radians(360));
        delay(100);
      }
    }
  }

  void display() {
    rotation();
    noStroke();
    float mouseD;
    mouseD=distance(centerX, centerY);
    fill(col1, col2, col3);
    if (mouseD<=30) {
      fill(195,174,190);
    }
    if ((mouseD<=30)&&(mousePressed)) {
      centerY=mouseY;
      centerX=mouseX;
    }
    pushMatrix();
    translate(centerX, centerY);
    rotate(angle1);
    beginShape();
    for (int i=0; i<6; i=i+2) {
      vertex(qVertex[i], qVertex[i+1]);
    }
    endShape(CLOSE);
    fill(255);
    noFill();
    stroke(255);
    ellipse(0, 0, 60, 60);
    popMatrix();
  }

  void verify() {
    if ((dist(centerX, centerY, finalX, finalY)<60)&&(anglefinal-angle1<0.00017)) {
      centerX=finalX;
      centerY=finalY;
      col1=69;
      col2=239;
      col3=236;
      victory=true;
      sol=1;
    }
  }
}