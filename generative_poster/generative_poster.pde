import processing.pdf.*;
boolean record = false;

PImage img;

float n;
float q;

Image[] cells;
int count;

void setup() {
  size(800, 800, P2D);
  frameRate(1000);
  background(0);
  img = loadImage("Test3.jpg");


  n = 10;
  q = width / n;

  cells = new Image[int(n*n)];
  for (int y = 0; y < n; y++) {
    float yoff = q * y + 0.5 * q;
    for (int x = 0; x < n; x++) {
      int index = int(x + y * n);

      float xoff = x * q + 0.5 * q;

      Image c = new Image(xoff, yoff);

      c.rotate_random();

      cells[index] = c;
    }
  }
}

void draw() {


  if (count < cells.length) {
    Image c = cells[count];
    c.build();
    count++;
    println(count);
  }
   else {
    loop();
   }  
  
  
  
  

  if (record && count >= n*n) {
    endRaw();
    record = false;
    
  }
}

void keyPressed() {
  if (key == 's') {
    count = 0;
    record = true;
    if (record) {
      beginRaw(PDF, "######.pdf");
    }
    println("[save]");
  }

  if (key == 'r') {
    
    count = 0;
    setup();
    record = false;
    println("[redraw]");
  }
}
