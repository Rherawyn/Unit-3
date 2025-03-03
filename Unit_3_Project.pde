// Gabriel Altshuler
//unit 2-4, 2025
// unit three project


//palletes
color magenta    = #F253F2;
color violet     = #7B0AFF;
color purple     = #9D0DFF;
color darkpurple = #610F98;
color royalblue  = #5A1FFF;
color velvet     = #684FFC;
color blue       = #364BFF;
color selected   = #5A5A5A;

//variable for color selection
float sliderR;
float sliderG;
float sliderB;
float thick;
float shadeB;
float shadeG;
float shadeR;
float memoryB;
float memoryG;
float memoryR;
float thickstroke;
color selectedcolor;

void setup() {
  size(1200, 800);
  stroke(darkpurple);
  strokeWeight(5);
  selectedcolor = purple;
  sliderB = 450;
  sliderG = 450;
  sliderR = 450;
  thick = 400;
  thickstroke = 25;
  shadeB = 0;
  shadeG = 0;
  shadeR = 0;
  memoryR = 0;
  memoryG = 0;
  memoryB = 0;
  fill(255);
  rect(0, 0, 1200, 800);
}

//draw ====================================================

void draw() {
  
  //canvas
  
  fill(215, 195, 255);
  stroke(215, 195, 255);
  rect(0, 0, 1200, 100);//215, 195, 229
  rect(0, 0, 80, 800);
  rect(0, 650, 1200, 150);
  rect(1120, 0, 80, 800);
  stroke(0);
  line(80, 100, 80, 650);
  line(1120, 100, 1120, 650);
  line(80, 100, 1120, 100);
  line(80, 650, 1120, 650);
  
  //buttons
  
  tactile(100,100,50);
  fill(magenta);
  circle(100,100,100);
  
  tactile(100,300,50); 
  fill(violet);
  circle(100,300,100);

  tactile(100, 500, 50);  
  fill(purple);
  circle(100,500,100);
  
  //rect buttons
  rectangle(925,1000,675,720);
  fill(memoryR, memoryG, memoryB);
  rect(925,675,75,45);
  println(shadeR, shadeG, shadeB);
  
  rectangle(925,1000,730,770); 
  fill(255);
  rect(925,730,75,45);

  rectangle(800,950,450,550);  
  fill(blue);
  rect(1025,675,75,45);
  
  rectangle(800,950,450,550);  
  fill(blue);
  rect(1025,730,75,45);
  
  //color indicator
  stroke(0);
  fill(shadeR, shadeG, shadeB);
  square(800, 675, 100);
  
  //strokeweight indicator
  
  stroke(0);
  fill(shadeR, shadeG, shadeB);
  circle(40, 200, thickstroke);
  
  //color sliders
  stroke(0);
  line(sliderB, 775, 750, 775);
  fill(255, 18, 93);
  stroke(255, 18, 93);
  line(450, 775, sliderB, 775);
  circle(sliderB, 775, 30);
  
  stroke(0);
  line(sliderG, 725, 750, 725);
  fill(255, 18, 93);
  stroke(255, 18, 93);
  line(450, 725, sliderG, 725);
  circle(sliderG, 725, 30);
  
  stroke(0);
  line(sliderR, 675, 750, 675);
  fill(255, 18, 93);
  stroke(255, 18, 93);
  line(450, 675, sliderR, 675);
  circle(sliderR, 675, 30);
  
  //thickness slider
  stroke(0);
  line(40, 250, 40, thick);
  fill(255, 18, 93);
  stroke(255, 18, 93);
  line(40, thick, 40, 550);
  circle(40, thick, 30);
  
  //text
  
  fill(0);
  textSize(17);
  text("ERASE", 941, 756);
  fill(255);
  text("DRAW", 941, 704);
 
} // end of draw ================================================

//tactile ========================================================
void tactile(int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY) < r) {
   stroke(selected);
  } else {
   stroke(darkpurple); 
  }
}// end of tactile ================================================

//rectangle ======================================================
void rectangle(int a, int b, int c, int d) {
  if (mouseX > a && mouseX < b && mouseY > c && mouseY < d) {
   stroke(selected);
  } else {
   stroke(0); 
  }
}//end of rectangle

//mouse click ====================================================
void mouseReleased() {
  if (dist(100,100,mouseX,mouseY) < 50) {
    selectedcolor = magenta;
  }
  
  if (dist(100,300,mouseX,mouseY) < 50) {
    selectedcolor = violet;
  }
  
  if (dist(100,500,mouseX,mouseY) < 50) {
    selectedcolor = purple;
  }
  
  if (mouseX > 925 && mouseX < 1000 && mouseY > 675 && mouseY < 720) {
   sliderR = map(memoryR, 0, 255, 450, 750);
   sliderG = map(memoryG, 0, 255, 450, 750);
   sliderB = map(memoryB, 0, 255, 450, 750);
  }
  
  if (mouseX > 925 && mouseX < 1000 && mouseY > 730 && mouseY < 770) {
    if(shadeR < 255 && shadeG < 255 && shadeB < 255) {
     memoryR = shadeR;
     memoryG = shadeG;
     memoryB = shadeB;
     sliderR = map(255, 0, 255, 450, 750);
     sliderG = map(255, 0, 255, 450, 750);
     sliderB = map(255, 0, 255, 450, 750);
    }
  }
  
  if (mouseX > 800 && mouseX < 950 && mouseY > 450 && mouseY < 550) {
   selectedcolor = blue;
  }
  
  controlslider();
  
} //end of mouse click =================================================

//slider stuff ========================================================

void controlslider() {
  if (mouseX > 445 && mouseX < 755 && mouseY > 750 && mouseY < 800) {
   sliderB = mouseX; 
  }
  
  if (mouseX > 445 && mouseX < 755 && mouseY > 710 && mouseY < 740) {
   sliderG = mouseX; 
  }
  
  if (mouseX > 445 && mouseX < 755 && mouseY > 650 && mouseY < 700) {
   sliderR = mouseX; 
  }
  
  if (mouseX > 25 && mouseX < 55 && mouseY > 250 && mouseY < 550) {
   thick = mouseY; 
  }
  
  shadeB = map(sliderB, 450, 750, 0, 255);
  
  shadeG = map(sliderG, 450, 750, 0, 255);
  
  shadeR = map(sliderR, 450, 750, 0, 255);
  
  thickstroke = map(thick, 250, 550, 50, 0);
}

void mouseDragged() {
  
  stroke(shadeR, shadeG, shadeB);
  strokeWeight(thickstroke);
  if (mouseX > 80 && mouseX < 1120 && mouseY > 100 && mouseY < 650) {
  line(pmouseX, pmouseY, mouseX, mouseY); 
  }
  strokeWeight(5);
  
  controlslider();
} // end of slider stuff ==================================================
