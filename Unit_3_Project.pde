//Fix knife appearing briefly in color selector
//Fix knife indicator alignment


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

//other variables
float sliderX;
float penSize;

PImage eraser;
PImage knife;

boolean knifeOn;
void setup() {
  background(255);
  size(1500,1000);
  strokeWeight(5);
  stroke(black);
  selectedColor = lightPink;
  sliderX = 50;
  penSize =10;
  
  eraser = loadImage("eraser.png");
  knife = loadImage("knife.png");
  knifeOn = false;
}

void draw() {
  //bg and ui
  fill(black);
  stroke(grey);
  rect(0,0,350,1000);
  rect(350,0,1150,150);
  rect(350,850,1150,150);
  
  //text
  fill(255);
  textSize(60);
  text("Microshift Saint", 725,95);
  fill(0);


  
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
  
  rectTactile(50,650,150,750);
  fill(white);
  rect(50,650,100,100);
  stroke(grey);
  
  rectTactile(200,650,300,750);
  fill(white);
  rect(200,650,100,100);
  stroke(grey);

//loading in images
  image(eraser,50,650,100,100);
  image(knife,200,650,100,100);
//slider
  fill(255);
  line(50,825,300,825);
  circle(sliderX,825,50);

//indicator
  if (knifeOn ==false){
    noStroke();
    fill(selectedColor);
    circle(175,925,penSize);
  } else {
      fill(0);
      image(knife,150,900,penSize,penSize);
  }
}


//functions
void rectTactile(int rX, int rY, int w, int h) {
  if(mouseX > rX && mouseX <  w && mouseY > rY && mouseY < h){
     stroke(neonPink);
  } else {
    stroke(white);
  }

}


void mouseReleased() {
  
  //color changer
  if(mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY <150) {
    selectedColor = lighterPink;
    knifeOn=false;
}

  if(mouseX > 50 && mouseX < 150 && mouseY > 200 && mouseY <300) {
    selectedColor = brightPink;
    knifeOn=false;
}

  if(mouseX > 50 && mouseX < 150 && mouseY > 350 && mouseY <450) {
    selectedColor = magenta;
    knifeOn=false;
}
  if(mouseX > 50 && mouseX < 150 && mouseY > 500 && mouseY <600) {
    selectedColor = darkPurple;
    knifeOn=false;
}
  if(mouseX > 50 && mouseX < 150 && mouseY > 650 && mouseY <750) {
    selectedColor = white;
    knifeOn=false;
}

  if(mouseX > 200 && mouseX < 300 && mouseY > 50 && mouseY <150) {
    selectedColor = lightPink;
    knifeOn=false;
}

  if(mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY <300) {
    selectedColor = pink;
    knifeOn=false;
}

  if(mouseX > 200 && mouseX < 300 && mouseY > 350 && mouseY <450) {
    selectedColor = purple;
    knifeOn=false;
}

  if(mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY <600) {
    selectedColor =darkerPurple;
    knifeOn=false;
}
//knife button
  if(mouseX > 200 && mouseX < 300 && mouseY > 650 && mouseY <750) {
    knifeOn = !knifeOn;
}

  if (knifeOn == false && mouseX > 350 && mouseY >150 && mouseY <850){
    //drawing dots
       strokeWeight(penSize);
       stroke(selectedColor);
       line(pmouseX,pmouseY,mouseX,mouseY);
       strokeWeight(5);
   } else {
     
       image(knife,mouseX,mouseY,penSize,penSize);
   }
  
  //slider
  controlSlider();
  
} 

void mouseDragged() {
  if (knifeOn == false && mouseX > 350 && mouseY >150 && mouseY <850){
    //squiggly lines
    strokeWeight(penSize);
    stroke(selectedColor);
    line(pmouseX,pmouseY,mouseX,mouseY);
    strokeWeight(5);
    
//slider    
  } else {
    //knife drawing
      if(mouseX > 350 && mouseY >150 && mouseY <850){
        image(knife,mouseX,mouseY,penSize,penSize);
      }
  }

  controlSlider();
}

void controlSlider() {
    if(mouseX>50 && mouseX < 300 && mouseY >800 && mouseY <850) {
    sliderX = mouseX;
    }
    
    penSize = map(sliderX,50,300,10,100);
}
