int tiempoLimite = 1000000000; // Tiempo máximo de aparición en cuadros (frames)
int timer = 0; // Contador de cuadros


int POSX=300;
int POSY=350;
void setup(){
size(700,700); 
}
  void draw(){  
  background(#20D14A);
  
  //el personaje o la pelotita
  fill(#FDFCFF);
  stroke(#9567FA);
  ellipse(POSX,POSY,90,90);
  
  if(340>= POSX && POSX <= 437 && 0 >= POSY && POSY <= 70){
    textSize(150);
    fill(#F01641);
    text("GOOOLLL",50,350);
    timer++; // Incrementar el contador de cuadros mientras el texto está visible
    POSY=350;
    POSX=300;
  }

  if(340>= POSX && POSX <= 437 && POSY >= 670){
    textSize(150);
    fill(#F01641);
    text("GOOOLLL",50,350);
    timer++; // Incrementar el contador de cuadros mientras el texto está visible
    POSY=350;
    POSX=300;
  }
  
  
  
  
  //linea de enmedio
  strokeWeight(3);
  stroke(#FAFCFA);
  line(0,350,700,350);
  //cancha de arriba
  fill(#FCFFFD);
  rect(275,0,160,70);
  strokeWeight(2);
  stroke(0);
  line(272,70,300,0);
  strokeWeight(2);
  stroke(0);
  line(437,70,405,0);
  //cancha de abajo
  fill(#FCFFFD);
  noStroke();
  rect(275,630,160,70);
  strokeWeight(2);
  stroke(0);
  line(273,630,300,700);
  strokeWeight(2);
  stroke(0);
  line(436,630,405,700);
  
  
  }


  void keyPressed(){
  if (keyCode==UP){
    POSY=POSY-10;
  }
  if (keyCode==DOWN){
    POSY=POSY+10;
  }
  if (keyCode==RIGHT){
    POSX=POSX+10;
  }
  if (keyCode==LEFT){
    POSX=POSX-10;
  }

}
  
  
  
