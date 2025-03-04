//palette of colors
color lightPink = #f4d1ff;
color pink = #e596ff;
color brightPink = #ff00f7;
color purple = #d000ff;
color darkPurple = #8e00ad;
color darkerPurple = #411547;
color magenta = #9c006f;
color lighterPink = #ffccf0;
color neonPink =#ff4557;

color black = #000000;
color white = #FFFFFF;
color grey = #6F6F6F;


color selectedColor;
void setup() {
  size(1500,1000);
  strokeWeight(5);
  stroke(black);
  selectedColor = lightPink;
}

void draw() {
  //bg and ui
  background(255);
  fill(black);
  stroke(grey);
  rect(0,0,350,1000);
  
  //buttons
  rectTactile(50,50,150,150);
  fill(lighterPink);
  rect(50,50,100,100);

  rectTactile(50,200,150,300);
  fill(brightPink);
  rect(50,200,100,100);
  
  rectTactile(50,350,150,450);
  fill(magenta);
  rect(50,350,100,100);
  
  rectTactile(50,500,150,600);
  fill(darkPurple);
  rect(50,500,100,100);
    
  rectTactile(200,50,300,150);
  fill(lightPink);
  rect(200,50,100,100);
  
  rectTactile(200,200,300,300);
  fill(pink);
  rect(200,200,100,100);
  
  rectTactile(200,350,300,450);
  fill(purple);
  rect(200,350,100,100);
  
  rectTactile(200,500,300,600);
  fill(darkerPurple);
  rect(200,500,100,100);
}


//functions
void rectTactile(int rX, int rY, int w, int h) {
  if(mouseX > rX && mouseX <  w && mouseY > rY && mouseY < h){
     stroke(neonPink);
  } else {
    stroke(white);
  }

}
