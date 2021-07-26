class Quad {
  float col1;
  float col2;
  float col3;
  float [] qVertex= new float [24];
  float centerX;
  float centerY;
  float angle1=0;
  float finalX;
  float finalY;
  boolean victory;
  float anglefinal;
  int sol=0;

  Quad(float [] vertex) {   // En las primeras 8 posiciones estan las coordenadas de los vetices y en las 3 utlimas se encuentra el codigo RGB asignado.
    col1=vertex[8];
    col2=vertex[9];
    col3=vertex[10];
    centerX=vertex[11];
    centerY=vertex[12];
    anglefinal=vertex[23];
    finalX=vertex[21];
    finalY=vertex[22];
    for (int i=0; i<8; i++) {
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
    fill(col1, col2, col3);
    float mouseD;
    mouseD=distance(centerX, centerY);
    if (mouseD<=30) {
      fill(195, 174, 190);
    }
    if ((mouseD<=30)&&(mousePressed)) {
      centerY=mouseY;
      centerX=mouseX;
    }
    pushMatrix();
    translate(centerX, centerY);
    rotate(angle1);
    beginShape();
    for (int i=0; i<8; i=i+2) {
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

float distance(float a, float b) {
  float distX;
  float distY;
  float dist;
  distX=mouseX-a;
  distY=mouseY-b;
  dist=sqrt(pow(distX, 2)+pow(distY, 2));
  return(dist);
}