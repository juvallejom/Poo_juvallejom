//Board
int n=8; /// tamaño de las columnas 
int d=600/n; // numero de columnas 
int [][]status = new int[d][d];
int frame = 24 ;

{
  for (int i=0; i<d; i++) {   // ESTATUS INICIAL DE LAS CELULAS
    for (int j=0; j<d; j++) {
      status[i][j]=int(random(2));
    }
  }
}


void setup() {
  size(600, 600);   // INICIALIZACION DEL ESCENARIO 
}

void draw() {
  frameRate(frame);
  print(frame);
  background(0);
  int[][] now = new int[d][d];    
  for (int x=1; x<d-1; x++) {
    for (int y=1; y<d-1; y++) {
      int vox=vox(x, y);  // CALCULO DE LOS VECINOS CERCANOS 
      now[x][y]=regla(x, y, vox); // CALCULO DEL NUEVO ESTADO DE LA CELULA 
    }
  }
  status=now;
  for (int x=0; x<d; x++) { // ESCRITURA DEL NUEVO ESTADO
    for (int y=0; y<d; y++) {
      if (status[x][y]==1) {
        fill(255);
      } else {
        fill(0);
      }
      rect(x*n, y*n, n, n);
    }
  }
}


int vox(int x, int y ) {  // ESTA FUNCION CUENTA LAS CELULAS VIVAS QUE ESE ENCUENTRAN ALREDEDOR DE UNA CASILLA
  int vox=0;
  for (int i=-1; i<=1; i++) {
    for (int j=-1; j<=1; j++) {
      vox+=status[x+j][y+i];
    }
  }
  vox=vox-status[x][y];
  return(vox);
}


int regla(int x, int y, int vox) {  // ESTAS SON LAS REGLAS DE LA VIDA 
  if (status[x][y]==1 && vox >3)
  return(0);
  else if (status[x][y] ==1  && vox <2)
  return(0);
  else if (status[x][y] == 0 && vox==3)
  return(1);
  else return(status[x][y]);
}
void keyPressed() {     // ESTE PROCESO SE VINCULA AL AUMENTO Y DISMINUCION DE LA VELOCIDAD DEL PROGRAMA AL IGUAL QUE SU PAUSA Y SU REINCIO.SE IMPLEMENTAN DICHAS 
  if (key == CODED) {   // OPERACIONES CON EL TECLADO
    if (keyCode == UP) {
      frame = frame+1;
    } else if (keyCode == DOWN) {
      frame = frame-1;
      if (frame<1) {
        frame=1;
      }
    }
  } else {
    frame = 24;
  } int k = keyCode;

  if (k == 'S')
    if (looping)  noLoop();   // Esta funcion pausa el ciclo del void draw 
    else          loop();
}