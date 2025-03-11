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
float imgSize;

PImage eraser;
PImage apple;

boolean appleOn;
void setup() {
  background(255);
  size(1500,1000);
  strokeWeight(5);
  stroke(black);
  selectedColor = lightPink;
  sliderX = 50;
  penSize =10;
  imgSize = 20;
  
  eraser = loadImage("eraser.png");
  apple = loadImage("apple.png");
  appleOn = false;
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
  
  //new button
  rectTactile(400,875,650,975);
  fill(white);
  rect(400,875,250,100);
  fill(black);
  text("N E W", 450,945);
  
  //save button
  rectTactile(800,875,1050,975);
  fill(white);
  rect(800,875,250,100);
  fill(black);
  text("S A V E", 840,945);
  
  //load button
  rectTactile(1200,875,1450,975);
  fill(white);
  rect(1200,875,250,100);
  fill(black);
  text("L O A D", 1240,945);
  
  
  
  
  
  //circle buttons
  tactile(100,700,50);
  fill(white);
  circle(100,700,100);
  stroke(grey);
  
  tactile(250,700,50);
  fill(white);
  circle(250,700,100);
  stroke(grey);
  
  
  


//loading in images
  image(eraser,65,665,70,70);
  image(apple,200,650,100,100);
//slider
  sliderTactile(50,825,300,825);
  fill(grey);
  line(50,825,300,825);
  circle(sliderX,825,50);

//indicator
  if (appleOn ==false){
    noStroke();
    fill(selectedColor);
    circle(175,925,penSize);
  } else {
      fill(0);
      image(apple,175-imgSize/2,925-imgSize/2,imgSize,imgSize);
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

void tactile(int x, int y, int r) {
  if(dist(x,y,mouseX,mouseY) < r){
    stroke(neonPink);
  } else {    
    stroke(grey);
    
    }
} 

void sliderTactile(int sX, int sY, int sW, int sH) {
  if(mouseX >sX-25 && mouseX <  sW +25 && mouseY > sY -25 && mouseY < sH+25){
     stroke(neonPink);
  } else {
    stroke(white);
  }
}

void mouseReleased() {
  
  //color changer
  if(mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY <150) {
    selectedColor = lighterPink;
    appleOn=false;
}

  if(mouseX > 50 && mouseX < 150 && mouseY > 200 && mouseY <300) {
    selectedColor = brightPink;
    appleOn=false;
}

  if(mouseX > 50 && mouseX < 150 && mouseY > 350 && mouseY <450) {
    selectedColor = magenta;
    appleOn=false;
}
  if(mouseX > 50 && mouseX < 150 && mouseY > 500 && mouseY <600) {
    selectedColor = darkPurple;
    appleOn=false;
}
  if(dist(100,700,mouseX,mouseY) < 50){
    selectedColor = white;
    appleOn=false;

}

  if(mouseX > 200 && mouseX < 300 && mouseY > 50 && mouseY <150) {
    selectedColor = lightPink;
    appleOn=false;
}

  if(mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY <300) {
    selectedColor = pink;
    appleOn=false;
}

  if(mouseX > 200 && mouseX < 300 && mouseY > 350 && mouseY <450) {
    selectedColor = purple;
    appleOn=false;
}

  if(mouseX > 200 && mouseX < 300 && mouseY > 500 && mouseY <600) {
    selectedColor =darkerPurple;
    appleOn=false;
}
//apple button
  if(dist(250,700,mouseX,mouseY) < 50) {
    appleOn = !appleOn;
}

//new button
  if(mouseX>400 && mouseX <650 && mouseY > 875 && mouseY<975) {
    stroke(grey);
    fill(white);
    rect(350,150,1150,700);  
  }
  
//save button
  if (mouseX>800 && mouseX <1050 && mouseY >875 && mouseY<975){
    selectOutput("Make a name for your new image file", "saveImage");
  }

//laod button
  if (mouseX>1200 && mouseX <1450 && mouseY >875 && mouseY<975){
    selectInput("Pick an image to load", "openImage");
  }

  if (appleOn == false && mouseX > 350 && mouseY >150 && mouseY <850){
    //drawing dots
       strokeWeight(penSize);
       stroke(selectedColor);
       line(pmouseX,pmouseY,mouseX,mouseY);
       strokeWeight(5);
   } else {
     if(mouseX > 350 && mouseY >150 && mouseY <850){
       image(apple,mouseX-imgSize/2,mouseY-imgSize/2,imgSize,imgSize);
     }
   }
  
  //slider
  controlSlider();
  
} 

void saveImage(File f) {
  if(f != null) {
    PImage canvas = get(350,150,1150,700);
    canvas.save(f.getAbsolutePath());
  
  }

}

void openImage(File f) {
  if(f != null){
    //KLUDGE
    int n = 0;
    while(n<100) {
      PImage pic = loadImage(f.getPath());
      image(pic,350,150);
      n=n+1;
    }
  }
}

void mouseDragged() {
  if (appleOn == false && mouseX > 350 && mouseY >150 && mouseY <850){
    //squiggly lines
    strokeWeight(penSize);
    stroke(selectedColor);
    line(pmouseX,pmouseY,mouseX,mouseY);
    strokeWeight(5);
    
//slider    
  } else {
    //apple drawing
      if(mouseX > 350 && mouseY >150 && mouseY <850){
        image(apple,mouseX-imgSize/2,mouseY-imgSize/2,imgSize,imgSize);
      }
  }

  controlSlider();
}

void controlSlider() {
    if(mouseX>50 && mouseX < 300 && mouseY >800 && mouseY <850) {
    sliderX = mouseX;
    }
    
    penSize = map(sliderX,50,300,10,80);
    imgSize = map(sliderX,50,300,20,100);    
}
