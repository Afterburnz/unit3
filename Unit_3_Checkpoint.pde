//palette of colors
color lightPink = #FF9C9C;
color pink = #F56C6C;
color red = #FF2424;
color darkRed = #9E0000;
color black = #000000;
color white = #FFFFFF;
color grey = #6F6F6F;
int toggle=1;

float sliderX;
float pinkShade;
//variables for color selection
color selectedColor;
void setup() {
  size(1000,1000);
  strokeWeight(5);
  stroke(black);
  selectedColor = darkRed;
  sliderX=500;
}


void draw() {
  background(255,pinkShade,255);

//slider
  fill(255,pinkShade,255);
  line(200,200,800,200);
  circle(sliderX,200,50);


//buttons
  tactile(900,300,50);
  fill(pink);
  circle(900,300,100);

  tactile(900,500,50);
  fill(red);
  circle(900,500,100);

  tactile(900,700,50);
  fill(darkRed);
  circle(900,700,100);
  
  //indicator
  stroke(black);
  fill(selectedColor);
  square(350,300,400);
  
  rectTactile(50,250,250,350);
  fill(pink);
  rect(50,250,200,100);

  rectTactile(50,450,450,550);
  fill(red);
  rect(50,450,200,100);
  
  rectTactile(50,650,650,750);
  fill(darkRed);
  rect(50,650,200,100);
  
  sliderTactile(200,175,800,225);
}

void tactile(int x, int y, int r) {
  if(dist(x,y,mouseX,mouseY) < r){
    stroke(white);
  } else {    
    stroke(black);
    
    }
} 

void rectTactile(int rX, int rY, int w, int h) {
  if(mouseX > rX && mouseX <  w && mouseY > rY && mouseY < h){
     stroke(white);
  } else {
    stroke(black);
  }

}

void sliderTactile(int sX, int sY, int sW, int sH) {
  if(mouseX >sX-25 && mouseX <  sW +25 && mouseY > sY -25 && mouseY < sH+25){
     stroke(grey);
  } else {
    stroke(black);
  }

}
void mouseReleased() {
  
  
  if(mouseX > 50 && mouseX < 250 && mouseY > 250 && mouseY <350) {
    selectedColor = pink;
}

  if(mouseX > 50 && mouseX < 250 && mouseY > 450 && mouseY <550) {
    selectedColor = red;
}

  if(mouseX > 50 && mouseX < 250 && mouseY > 650 && mouseY <750) {
    selectedColor = darkRed;
}
  if(dist(900,300,mouseX,mouseY) < 50){
    selectedColor = pink;
  }

  if(dist(900,500,mouseX,mouseY) < 50){
    selectedColor = red;
  }

  if(dist(900,700,mouseX,mouseY) < 50){
    selectedColor = darkRed;
  }
  
  controlSlider();
  

} 

void mouseDragged() {
  controlSlider();

}



void controlSlider() {
    if(mouseX>200 && mouseX < 800 && mouseY >175 && mouseY <225) {
    sliderX = mouseX;
    }
    
    pinkShade = map(sliderX,200,800,0,255);
}
