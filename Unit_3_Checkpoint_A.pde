//palette of colors
color lightPink = #FF9C9C;
color pink = #F56C6C;
color red = #FF2424;
color darkRed = #9E0000;
color black = #000000;


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
  fill(pink);
  circle(100,100,100);
  
  fill(red);
  circle(100,300,100);
  
  fill(darkRed);
  circle(100,500,100);
  
  //indicator
  fill(selectedColor);
  square(300,100,400);
}

void mouseReleased() {
  if(dist(100,100,mouseX,mouseY) < 50){
    selectedColor = pink;
  }


}
