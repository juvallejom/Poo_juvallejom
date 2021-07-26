Trian f1;
Trian f2;
Trian f3;
Trian f4;
Trian f5;
Quad f6;
Quad f7;
Trian f12;
Trian f22;
Trian f32;
Trian f42;
Trian f52;
Quad f62;
Quad f72;
int boton= 0;
int boton1=0;




float[] vf1={-80, -200, -80, 200, 120, 0, 227, 96, 87, 180, 300, -80, -200, -80, 200, 120, 0, 920, 500, 0}; //1-4.Corext_in|5-6.VerticeCentral_in|7-9.RGB|10-11.Centro_in|12-15.Corext_fin|16-17.VerticeCentral_fin|18-19.Centro_fin|20.Angulo_fin
float[] vf2={-200, -80, 200, -80, 0, 120, 160, 177, 225, 300, 180, 0, 0, 0, 0, 0, 0, 760, 500, radians(90)};
float[] vf3={60, 60, 60, -140, -140, 60, 130, 231, 122, 440, 440, 0, 0, 0, 0, 0, 0, 980, 640, 0};
float[] vf4={40, -100, 40, 100, -60, 0, 242, 178, 57, 460, 200, 0, 0, 0, 0, 0, 0, 900, 100, 0};
float[] vf5={0, -60, 100, 40, -100, 40, 40, 60, 78, 300, 360, 0, 0, 0, 0, 0, 0, 780, 100, 0};
float[] vf6={0, -100, -100, 0, 0, 100, 100, 0, 59, 100, 205, 400, 300, 0, 0, 0, 0, 0, 0, 0, 0, 840, 200, 0}; // Rombo float[] vf6={400, 200, 300, 300, 400, 400, 500, 300, 59, 100, 205,420,300}; 
float[] vf7={-150, 50, 50, 50, 150, -50, -50, -50, 239, 63, 228, 250, 450, 0, 0, 0, 0, 0, 0, 0, 0, 1110, 559, radians(135)}; // Trapecio float[] vf7={100, 500, 300, 500, 400, 400, 200, 400, 239, 63, 228,250,450};
float[] vf12={-80, -200, -80, 200, 120, 0, 227, 96, 87, 180, 300, -80, -200, -80, 200, 120, 0, 920, 500, 0}; //1-4.Corext_in|5-6.VerticeCentral_in|7-9.RGB|10-11.Centro_in|12-15.Corext_fin|16-17.VerticeCentral_fin|18-19.Centro_fin|20.Angulo_fin
float[] vf22={-200, -80, 200, -80, 0, 120, 160, 177, 225, 300, 180, 0, 0, 0, 0, 0, 0, 760, 500, radians(90)};
float[] vf32={60, 60, 60, -140, -140, 60, 130, 231, 122, 440, 440, 0, 0, 0, 0, 0, 0, 980, 640, 0};
float[] vf42={40, -100, 40, 100, -60, 0, 242, 178, 57, 460, 200, 0, 0, 0, 0, 0, 0, 900, 100, 0};
float[] vf52={0, -60, 100, 40, -100, 40, 40, 60, 78, 300, 360, 0, 0, 0, 0, 0, 0, 780, 100, 0};
float[] vf62={0, -100, -100, 0, 0, 100, 100, 0, 59, 100, 205, 400, 300, 0, 0, 0, 0, 0, 0, 0, 0, 840, 200, 0}; // Rombo float[] vf6={400, 200, 300, 300, 400, 400, 500, 300, 59, 100, 205,420,300}; 
float[] vf72={-150, 50, 50, 50, 150, -50, -50, -50, 239, 63, 228, 250, 450, 0, 0, 0, 0, 0, 0, 0, 0, 1110, 559, radians(135)}; // Trapecio float[] vf7={100, 500, 300, 500, 400, 400, 200, 400, 239, 63, 228,250,450};
boolean[] solution = new boolean [7];

float [][] results_t = {{920, 500, 120, 0, -80, 200, -80, -200}, 
  {760, 500, 80, 200, 80, -200, -120, 0}, 
  {980, 640, 60, 60, 60, -140, -140, 60}, 
  {900, 100, 40, -100, 40, 100, -60, 0}, 
  {780, 100, 60, 0, -40, 100, -40, -100}, //{780, 100, 60, 0, -40, 100, -40, -100}, 
};

float [][]results_q ={{840, 200, 0, -100, -100, 0, 0, 100, 100, 0}, 
  {1110, 559, -70, 141, -70, -2, 70, -139, 70, -2}, //{1111, 569, -71, 131, 50, 50, 150, -50, -50, -50}, 
};
///////////////////////////////////////////////NIVEL 2 RESULTADOS ///////////////////////////////////////////////////////

float [][] results_t2 = {{920, 500, 120, 0, -80, 200, -80, -200}, 
  {760, 500, 80, 200, 80, -200, -120, 0}, 
  {980, 640, 60, 60, 60, -140, -140, 60}, 
  {900, 100, 40, -100, 40, 100, -60, 0}, // R
  {780, 100, 60, 0, -40, 100, -40, -100}, //{780, 100, 60, 0, -40, 100, -40, -100}, // R
};

float [][]results_q2 ={{840, 200, 0, -100, -100, 0, 0, 100, 100, 0},  //R
  {1110, 559, -70, 141, -70, -2, 70, -139, 70, -2}, //{1111, 569, -71, 131, 50, 50, 150, -50, -50, -50}, 
};
boolean verft=false;

PImage img;
PImage back;
boolean juego= false;
boolean juego2=false;
boolean nivel=false;

/////////////////////////////////////////////////////PROGRAMA///////////////////////////////////////////7

void setup() {
  size(1500, 800);
  PFont fuente;
  fuente=loadFont("FranklinGothic-MediumCond-48.vlw");
  textFont(fuente, 32);
  f1=new Trian(vf1); 
  f2=new Trian(vf2);
  f3=new Trian(vf3);
  f4=new Trian(vf4);
  f5=new Trian(vf5);
  f6=new Quad(vf6);
  f7=new Quad(vf7);  
  f12=new Trian(vf12); 
  f22=new Trian(vf22);
  f32=new Trian(vf32);
  f42=new Trian(vf42);
  f52=new Trian(vf52);
  f62=new Quad(vf62);
  f72=new Quad(vf72);
  img=loadImage("congrats.jpg");
  back=loadImage("tumblr_static_c8cbcfdq6zw48g4kscokkcwwc.jpg");
}

void draw() {
  menu();
  if (mousePressed && mouseX>650 && mouseX< 850 && mouseY<450 & mouseY > 350 ) juego = true;
  if (mousePressed &&mouseX>650 && mouseX< 850 && mouseY<600 & mouseY > 500 ) nivel = true;
  if( nivel==true)nivel();
  if (juego== true )jugar();
  if (juego2==true){
    juego=false;
    jugar2();
    
    
  }
  
}


void pintarBoard() {
  // PROBELMA
  for (int i=0; i<5; i++) {
    noStroke();
    pushMatrix();
    translate(results_t[i][0], results_t[i][1]);
    beginShape();
    for (int j=2; j<8; j=j+2) {
      vertex(results_t[i][j], results_t[i][j+1]);
    }
    endShape(CLOSE);
    popMatrix();
    ////////////////////////////////////////////////////////
  }  
  for (int i=0; i<2; i++) {
    noStroke();
    pushMatrix();
    translate(results_q[i][0], results_q[i][1]);
    beginShape();
    for (int j=2; j<10; j=j+2) {
      vertex(results_q[i][j], results_q[i][j+1]);
    }
    endShape(CLOSE);
    popMatrix();
  }
}

void pintarBoard2() {
  // PROBELMA
  for (int i=0; i<5; i++) {
    noStroke();
    pushMatrix();
    translate(results_t2[i][0], results_t2[i][1]);
    beginShape();
    for (int j=2; j<8; j=j+2) {
      vertex(results_t2[i][j], results_t2[i][j+1]);
    }
    endShape(CLOSE);
    popMatrix();
    ////////////////////////////////////////////////////////
  }  
  for (int i=0; i<2; i++) {
    noStroke();
    pushMatrix();
    translate(results_q2[i][0], results_q2[i][1]);
    beginShape();
    for (int j=2; j<10; j=j+2) {
      vertex(results_q2[i][j], results_q2[i][j+1]);
    }
    endShape(CLOSE);
    popMatrix();
  }
}

void jugar() {

  frameRate(200);
  background(0);
  image(back, 0, 0);
  fill(0);
  noStroke();
  rectMode(CENTER);
  fill(0);
  rect(300, 600, 400, 100);
  fill(255);
  textSize(50);
  textAlign(CENTER);
  text ("NIVEL 1", 300, 620); //FranklinGothic-MediumCond-48
  pintarBoard();
  f1.display();
  f2.display();
  f3.display();
  f4.display();
  f5.display();
  f6.display();
  f7.display();
  f1.verify();
  f2.verify();
  f3.verify();
  f4.verify();
  f5.verify();
  f6.verify();
  f7.verify();
  solution[0]=f1.victory;
  solution[1]=f2.victory;
  solution[2]=f3.victory;
  solution[3]=f4.victory;
  solution[4]=f5.victory;
  solution[5]=f5.victory;
  solution[6]=f7.victory;
  verft=(solution[0])&&(solution[1])&&(solution[2])&&solution[3]&&solution[4]&&solution[5]&&solution[6];


  if (verft==true) {
    background(255, 255, 255);
    fill(0, 0, 0);
    pintarBoard();
    image(img, 0, 0);
    rectMode(CENTER);
    fill(0);
    rect(300, 600, 400, 100);
    fill(255);
    textSize(50);
    textAlign(CENTER);
    text ("SIGUIENTE NIVEL", 300, 620); //FranklinGothic-MediumCond-48
    if (mousePressed && mouseX>100 && mouseX< 500 && mouseY<650 & mouseY > 550 ) juego2 = true;
  }
  // println(vf2[19]);
  //println(f2.angle1);
}

void menu () {

  textSize(20);
  background(160);
  image(back, 0, 0);
  fill(255);
  textAlign(CENTER);
  text ("PRESIONA JUGAR PARA INICIAR", 750, 300);
  textSize(100);
  text ("TANGRAM", 750, 200);
  fill(255, 0, 0);
  rectMode(CENTER);
  boton=0;
  boton1=0;
  if (mouseX>650 && mouseX< 850 && mouseY<450 & mouseY > 350 ) {
    boton=255;
  }
  fill(boton, boton, boton);
  noStroke();
  rect(750, 400, 200, 100);
  if (mouseX>650 && mouseX< 850 && mouseY<600 & mouseY > 500 ) {
    boton1=255;
  }
  fill(boton1,boton1,boton1);
  rect(750,550,200,100);
  fill(255);
  
  textSize(50);
  textAlign(CENTER);
  text ("JUGAR", 750, 415); //FranklinGothic-MediumCond-48
  textSize(50);
  textAlign(CENTER);
  text ("NIVELES", 750, 565); //FranklinGothic-MediumCond-48
}


void jugar2(){
  frameRate(200);
  background(0);
  image(back, 0, 0);
  fill(0);
  noStroke();
  rectMode(CENTER);
  fill(0);
  rect(300, 600, 400, 100);
  fill(255);
  textSize(50);
  textAlign(CENTER);
  text ("NIVEL 2", 300, 620); //FranklinGothic-MediumCond-48
  f12.display();
  f22.display();
  f32.display();
  f42.display();
  f52.display();
  f62.display();
  f72.display();
}

void nivel(){
   textSize(20);
  background(160);
  image(back, 0, 0);
  fill(255);
  textAlign(CENTER);
  textSize(80);
  text ("NIVELES", 750, 200);
  fill(255, 0, 0);
  rectMode(CENTER);
  boton=0;
  boton1=0;
  if (mouseX>650 && mouseX< 850 && mouseY<450 & mouseY > 350 ) {
    boton=255;
  }
  fill(boton, boton, boton);
  noStroke();
  rect(750, 400, 200, 100);
  if (mouseX>650 && mouseX< 850 && mouseY<600 & mouseY > 500 ) {
    boton1=255;
  }
  fill(boton1,boton1,boton1);
  rect(750,550,200,100);
  fill(255);
  
  textSize(50);
  textAlign(CENTER);
  text ("NIVEL1", 750, 415); //FranklinGothic-MediumCond-48
  textSize(50);
  textAlign(CENTER);
  text ("NIVEL2", 750, 565); //FranklinGothic-MediumCond-48
}