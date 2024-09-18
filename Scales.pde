void setup() {
  size(500, 500);
  noLoop(); //stops the draw() function from repeating
}

void draw() {
  background(16, 16, 16);
  strokeWeight(3.5);

  for(int y = 0; y < 500; y+=45) {
    int increment = (int)(Math.random()*20 + 30);
    for(int x = 0; x < 500; x+=increment) {
      scale(x, y);
    }
  }
}
void scale(int x, int y) {
  int colorCode = (int)(Math.random() * 256);
  fill(colorCode, colorCode, colorCode);
  stroke(colorCode, colorCode, colorCode);
  
  //top section
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+22, y-10);
  curveVertex(x+30, y-15);
  curveVertex(x+37, y-10);
  curveVertex(x+60, y);
  curveVertex(x+60, y);
  endShape();
 
  //bottom section
  beginShape();
  curveVertex(x+60, y);
  curveVertex(x+60, y);
  curveVertex(x+50, y+30);
  curveVertex(x+30, y+50);
  curveVertex(x+10, y+30);
  curveVertex(x, y);
  curveVertex(x, y);
  endShape();

  noFill();
  //top section outline
  beginShape();
  curveVertex(x-7, y-5);
  curveVertex(x-7, y-5);
  curveVertex(x+22, y-17);
  curveVertex(x+30, y-22);
  curveVertex(x+37, y-17);
  curveVertex(x+67, y-5);
  curveVertex(x+67, y-5);
  endShape();
 
  //bottom section outline
  beginShape();
  curveVertex(x+67, y-5);
  curveVertex(x+67, y-5);
  curveVertex(x+57, y+30);
  curveVertex(x+30, y+57);
  curveVertex(x+3, y+30);
  curveVertex(x-7, y-5);
  curveVertex(x-7, y-5);
  endShape();
}

