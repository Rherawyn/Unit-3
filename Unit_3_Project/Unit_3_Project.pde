// Gabriel Altshuler
//unit 2-4, 2025
// unit three project

//images
PImage star;
PImage sun;
PImage moon;
PImage almond;
PImage hamburger;
//palletes
color magenta    = #F253F2;
color violet     = #7B0AFF;
color purple     = #9D0DFF;
color darkpurple = #610F98;
color royalblue  = #5A1FFF;
color velvet     = #684FFC;
color blue       = #364BFF;
color lavender   = #7251D8;
color selected   = #5A5A5A;
color selectedcolor;

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
float memoryBp1;
float memoryGp1;
float memoryRp1;
float memoryBp2;
float memoryGp2;
float memoryRp2;
float memoryBp3;
float memoryGp3;
float memoryRp3;
float memoryBp4;
float memoryGp4;
float memoryRp4;
float memoryBp5;
float memoryGp5;
float memoryRp5;
float thickstroke;
boolean pg1;
boolean pg2;
boolean pg3;
boolean pg4;
boolean pg5;
boolean sp1;
boolean sp2;
boolean sp3;
boolean sp4;
boolean sp5;

void setup() {
  size(1200, 800);
  stroke(0);
  strokeWeight(5);
  star = loadImage("star.png");
  sun = loadImage("sun.png");
  moon = loadImage("moon.png");
  almond = loadImage("almond.png");
  hamburger = loadImage("hamburger.png");
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
  memoryRp1 = 0;
  memoryGp1 = 0;
  memoryBp1 = 0;
  memoryRp2 = 0;
  memoryGp2 = 0;
  memoryBp2 = 0;
  memoryRp3 = 0;
  memoryGp3 = 0;
  memoryBp3 = 0;
  memoryRp4 = 0;
  memoryGp4 = 0;
  memoryBp4 = 0;
  memoryRp5 = 0;
  memoryGp5 = 0;
  memoryBp5 = 0;
  pg1 = true;
  pg2 = true;
  pg3 = true;
  pg4 = true;
  pg5 = true;
  sp1 = false;
  sp2 = false;
  sp3 = false;
  sp4 = false;
  sp5 = false;
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

  tactile(125, 690, 25);
  fill(magenta);
  circle(125, 690, 50);

  tactile(200, 690, 25);
  fill(violet);
  circle(200, 690, 50);

  tactile(275, 690, 25);
  fill(purple);
  circle(275, 690, 50);

  tactile(350, 690, 25);
  fill(darkpurple);
  circle(350, 690, 50);

  tactile(125, 760, 25);
  fill(blue);
  circle(125, 760, 50);

  tactile(200, 760, 25);
  fill(royalblue);
  circle(200, 760, 50);

  tactile(275, 760, 25);
  fill(velvet);
  circle(275, 760, 50);

  tactile(350, 760, 25);
  fill(lavender);
  circle(350, 760, 50);

  //menu buttons=============================
  rectangle(925, 1000, 675, 720);
  fill(memoryR, memoryG, memoryB);
  rect(925, 675, 75, 45);
  //println(shadeR, shadeG, shadeB);

  rectangle(925, 1000, 730, 770);
  fill(255);
  rect(925, 730, 75, 45);

  rectangle(1015, 1090, 675, 710);
  fill(shadeR, shadeG, shadeB);
  rect(1015, 675, 75, 45);

  rectangle(1015, 1090, 730, 775);
  fill(255, 18, 93);
  rect(1015, 730, 75, 45);

  rectangle(1110, 1185, 675, 710);
  fill(3, 255, 88);
  rect(1110, 675, 75, 45);

  rectangle(1110, 1185, 730, 775);
  fill(3, 255, 206);
  rect(1110, 730, 75, 45);
  //end of menu buttons==========================

  //programable buttons===================================

  if (pg1 == false) {
    rectangle(100, 175, 20, 80);
  } else {
    stroke(selected);
  }
  fill(memoryRp1, memoryGp1, memoryBp1);
  rect(100, 20, 75, 60);

  if (pg2 == false) {
    rectangle(200, 275, 20, 80);
  } else {
    stroke(selected);
  }
  fill(memoryRp2, memoryGp2, memoryBp2);
  rect(200, 20, 75, 60);

  if (pg3 == false) {
    rectangle(300, 375, 20, 80);
  } else {
    stroke(selected);
  }
  fill(memoryRp3, memoryGp3, memoryBp3);
  rect(300, 20, 75, 60);

  if (pg4 == false) {
    rectangle(400, 475, 20, 80);
  } else {
    stroke(selected);
  }
  fill(memoryRp4, memoryGp4, memoryBp4);
  rect(400, 20, 75, 60);

  if (pg5 == false) {
    rectangle(500, 575, 20, 80);
  } else {
    stroke(selected);
  }
  fill(memoryRp5, memoryGp5, memoryBp5);
  rect(500, 20, 75, 60);
  //end ofprogramable buttons===================================

  //stamp buttons===============================================
  if (sp1 == true) {
    fill(160);
  } else {
    fill(130);
  }
  rectangle(628, 701, 14, 84);
  rect(628, 14, 73, 70);
  image(star, 635, 20, 60, 60);

  if (sp2 == true) {
    fill(160);
  } else {
    fill(130);
  }
  rectangle(716, 789, 14, 84);
  rect(716, 14, 73, 70);
  image(sun, 723, 20, 60, 60);

  if (sp3 == true) {
    fill(160);
  } else {
    fill(130);
  }
  rectangle(805, 878, 14, 84);
  rect(805, 14, 73, 70);
  image(moon, 815, 22, 55, 55);

  if (sp4 == true) {
    fill(160);
  } else {
    fill(130);
  }
  rectangle(893, 966, 14, 84);
  rect(893, 14, 73, 70);
  image(almond, 903, 20, 60, 60);

  if (sp5 == true) {
    fill(160);
  } else {
    fill(130);
  }
  rectangle(981, 1054, 14, 84);
  rect(981, 14, 73, 70);
  image(hamburger, 988, 20, 60, 60);

  //end of stamp buttons===============================================

  //devider line============
  stroke(0);
  line(600, 15, 600, 85);
  //end of devider line============

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

  //PG button works
  if (pg1 == true) {
    memoryRp1 = shadeR;
    memoryGp1 = shadeG;
    memoryBp1 = shadeB;
  }

  if (pg2 == true) {
    memoryRp2 = shadeR;
    memoryGp2 = shadeG;
    memoryBp2 = shadeB;
  }

  if (pg3 == true) {
    memoryRp3 = shadeR;
    memoryGp3 = shadeG;
    memoryBp3 = shadeB;
  }

  if (pg4 == true) {
    memoryRp4 = shadeR;
    memoryGp4 = shadeG;
    memoryBp4 = shadeB;
  }

  if (pg5 == true) {
    memoryRp5 = shadeR;
    memoryGp5 = shadeG;
    memoryBp5 = shadeB;
  }

  //end pf PG button works

  //text

  fill(0);
  textSize(17);
  text("ERASE", 940, 758);
  text("SAVE", 1130, 704);
  text("LOAD", 1128, 758);
  fill(255);
  text("DRAW", 941, 704);
  text("FILL", 1038, 704);
  text("RESET", 1030, 758);
  textSize(15);
  fill(0);
  text(shadeR, 387, 677);
  text(shadeG, 387, 727);
  text(shadeB, 387, 777);
} // end of draw ================================================

//tactile ========================================================
void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(selected);
  } else {
    stroke(0);
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

  //circle buttons
  if (dist(125, 690, mouseX, mouseY) < 50) {
    sliderR = map(242, 0, 255, 450, 750);
    sliderG = map(83, 0, 255, 450, 750);
    sliderB = map(242, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (dist(200, 690, mouseX, mouseY) < 50) {
    sliderR = map(123, 0, 255, 450, 750);
    sliderG = map(10, 0, 255, 450, 750);
    sliderB = map(255, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (dist(275, 690, mouseX, mouseY) < 50) {
    sliderR = map(157, 0, 255, 450, 750);
    sliderG = map(13, 0, 255, 450, 750);
    sliderB = map(255, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (dist(350, 690, mouseX, mouseY) < 50) {
    sliderR = map(97, 0, 255, 450, 750);
    sliderG = map(15, 0, 255, 450, 750);
    sliderB = map(152, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (dist(125, 760, mouseX, mouseY) < 50) {
    sliderR = map(54, 0, 255, 450, 750);
    sliderG = map(75, 0, 255, 450, 750);
    sliderB = map(255, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (dist(200, 760, mouseX, mouseY) < 50) {
    sliderR = map(90, 0, 255, 450, 750);
    sliderG = map(31, 0, 255, 450, 750);
    sliderB = map(255, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (dist(275, 760, mouseX, mouseY) < 50) {
    sliderR = map(104, 0, 255, 450, 750);
    sliderG = map(79, 0, 255, 450, 750);
    sliderB = map(252, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (dist(350, 760, mouseX, mouseY) < 50) {
    sliderR = map(114, 0, 255, 450, 750);
    sliderG = map(81, 0, 255, 450, 750);
    sliderB = map(216, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  } // end of circle buttons

  //menu buttons=========================================================
  if (mouseX > 925 && mouseX < 1000 && mouseY > 675 && mouseY < 720) {
    sliderR = map(memoryR, 0, 255, 450, 750);
    sliderG = map(memoryG, 0, 255, 450, 750);
    sliderB = map(memoryB, 0, 255, 450, 750);
    sp1 = false;
    sp2 = false;
    sp3 = false;
    sp4 = false;
    sp5 = false;
  }

  if (mouseX > 925 && mouseX < 1000 && mouseY > 730 && mouseY < 770) {
    if (shadeR < 255 && shadeG < 255 && shadeB < 255 || sp1 == true && sp2 == true && sp3 == true && sp4 == true && sp5 == true) {
      memoryR = shadeR;
      memoryG = shadeG;
      memoryB = shadeB;
      sliderR = map(255, 0, 255, 450, 750);
      sliderG = map(255, 0, 255, 450, 750);
      sliderB = map(255, 0, 255, 450, 750);
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    }
  }

  if (mouseX > 1015 && mouseX < 1090 && mouseY > 675 && mouseY < 710) {
    fill(shadeR, shadeG, shadeB);
    rect(80, 100, 1040, 550);
  }

  if (mouseX > 1015 && mouseX < 1090 && mouseY > 730 && mouseY < 775) {
    fill(255);
    rect(80, 100, 1040, 550);
  }

  if (mouseX > 1110 && mouseX < 1185 && mouseY > 675 && mouseY < 710) {
    selectOutput("Choose a name for you saved image", "saveimage");
  }

  if (mouseX > 1110 && mouseX < 1185 && mouseY > 730 && mouseY < 775) {
    selectInput("Select an image to import", "importimage");
  }//end of menu buttons================================================

  //stamps
  if (mouseX > 628 && mouseX < 701 && mouseY > 14 && mouseY < 84) {
    if (sp1 == false) {
      sp1 = true;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    } else {
      sp1 = false;
    }
  }

  if (mouseX > 716 && mouseX < 789 && mouseY > 14 && mouseY < 84) {
    if (sp2 == false) {
      sp1 = false;
      sp2 = true;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    } else {
      sp2 = false;
    }
  }

  if (mouseX > 805 && mouseX < 878 && mouseY > 14 && mouseY < 84) {
    if (sp3 == false) {
      sp1 = false;
      sp2 = false;
      sp3 = true;
      sp4 = false;
      sp5 = false;
    } else {
      sp3 = false;
    }
  }

  if (mouseX > 893 && mouseX < 966 && mouseY > 14 && mouseY < 84) {
    if (sp4 == false) {
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = true;
      sp5 = false;
    } else {
      sp4 = false;
    }
  }

  if (mouseX > 981 && mouseX < 1054 && mouseY > 14 && mouseY < 84) {
    if (sp5 == false) {
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = true;
    } else {
      sp5 = false;
    }
  }
  //end of stamps

  //programable buttons==================================================
  if (mouseX > 100 && mouseX < 175 && mouseY > 20 && mouseY < 80) {
    if (pg1 == false) {
      pg1 = true;
      sliderR = map(memoryRp1, 0, 255, 450, 750);
      sliderG = map(memoryGp1, 0, 255, 450, 750);
      sliderB = map(memoryBp1, 0, 255, 450, 750);
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    } else {
      pg1 = false;
    }
  }

  //print(pg1);

  if (mouseX > 200 && mouseX < 275 && mouseY > 20 && mouseY < 80) {
    if (pg2 == false) {
      pg2 = true;
      sliderR = map(memoryRp2, 0, 255, 450, 750);
      sliderG = map(memoryGp2, 0, 255, 450, 750);
      sliderB = map(memoryBp2, 0, 255, 450, 750);
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    } else {
      pg2 = false;
    }
  }

  if (mouseX > 300 && mouseX < 375 && mouseY > 20 && mouseY < 80) {
    if (pg3 == false) {
      pg3 = true;
      sliderR = map(memoryRp3, 0, 255, 450, 750);
      sliderG = map(memoryGp3, 0, 255, 450, 750);
      sliderB = map(memoryBp3, 0, 255, 450, 750);
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    } else {
      pg3 = false;
    }
  }

  if (mouseX > 400 && mouseX < 475 && mouseY > 20 && mouseY < 80) {
    if (pg4 == false) {
      pg4 = true;
      sliderR = map(memoryRp4, 0, 255, 450, 750);
      sliderG = map(memoryGp4, 0, 255, 450, 750);
      sliderB = map(memoryBp4, 0, 255, 450, 750);
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    } else {
      pg4 = false;
    }
  }

  if (mouseX > 500 && mouseX < 575 && mouseY > 20 && mouseY < 80) {
    if (pg5 == false) {
      pg5 = true;
      sliderR = map(memoryRp5, 0, 255, 450, 750);
      sliderG = map(memoryGp5, 0, 255, 450, 750);
      sliderB = map(memoryBp5, 0, 255, 450, 750);
      sp1 = false;
      sp2 = false;
      sp3 = false;
      sp4 = false;
      sp5 = false;
    } else {
      pg5 = false;
    }
  }
  //end of programable buttons==================================================

  if (mouseX > 80 && mouseX < 1120 && mouseY > 100 && mouseY < 650) {
    if (sp1 == false && sp2 == false && sp3 == false && sp4 == false && sp5 == false) {
      stroke(shadeR, shadeG, shadeB);
      strokeWeight(thickstroke);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else if (sp1 == true) {
      image(star, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp2 == true) {
      image(sun, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp3 == true) {
      image(moon, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp4 == true) {
      image(almond, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp5 == true) {
      image(hamburger, mouseX, mouseY, thickstroke, thickstroke);
    }
  }

  strokeWeight(5);

  controlslider();
} //end of mouse click =================================================

//save and load buttons
void saveimage(File f) {
  if (f != null) {
    PImage canvas = get(83, 103, 1035, 545);
    canvas.save(f.getAbsolutePath());
  }
}

void importimage(File f) {
  if (f != null) {
    //KLUDGE
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 83, 103);
      n = n + 1;
    }
  }
}

// end of save and load buttons

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

  thickstroke = map(thick, 250, 550, 55, 0);
}

void mouseDragged() {

  stroke(shadeR, shadeG, shadeB);
  strokeWeight(thickstroke);
  if (mouseX > 80 && mouseX < 1120 && mouseY > 100 && mouseY < 650) {
    if (sp1 == false && sp2 == false && sp3 == false && sp4 == false && sp5 == false) {
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else if (sp1 == true) {
      image(star, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp2 == true) {
      image(sun, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp3 == true) {
      image(moon, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp4 == true) {
      image(almond, mouseX, mouseY, thickstroke, thickstroke);
    } else if (sp5 == true) {
      image(hamburger, mouseX, mouseY, thickstroke, thickstroke);
    }
  }
  strokeWeight(5);

  controlslider();
} // end of slider stuff ==================================================
