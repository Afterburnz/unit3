//palette of colors
color lightPink = #FF9C9C;
color pink = #F56C6C;
color red = #FF2424;
color darkRed = #9E0000;
color black = #000000;
color white = #FFFFFF;

//variables for color selection
color selectedColor;
void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(black);
  selectedColor = darkRed;

}


void draw() {
  background(lightPink);


//buttons
  tactile(700,100,50);
  fill(pink);
  circle(700,100,100);

  tactile(700,300,50);
  fill(red);
  circle(700,300,100);

  tactile(700,500,50);
  fill(darkRed);
  circle(700,500,100);
  
  //indicator
  stroke(black);
  fill(selectedColor);
  square(100,100,400);
}

void tactile(int x, int y, int r) {
  if(dist(x,y,mouseX,mouseY) < r){
    stroke(white);
  } else {    
    stroke(black);
  }
} 

void mouseReleased() {
  if(dist(700,100,mouseX,mouseY) < 50){
    selectedColor = pink;
  }

  if(dist(700,300,mouseX,mouseY) < 50){
    selectedColor = red;
  }

  if(dist(700,500,mouseX,mouseY) < 50){
    selectedColor = darkRed`;
  }


}
