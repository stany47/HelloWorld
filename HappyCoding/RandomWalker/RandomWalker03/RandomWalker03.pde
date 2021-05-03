ArrayList<RandomWalker> randomWalkers = new ArrayList<RandomWalker>();

void setup() {
  size(2000, 900);

  background(200,200,200);
  strokeWeight(1);
  noSmooth();
  frameRate(10000);
  for (int i = 0;i<1000; i++){
  randomWalkers.add(new RandomWalker());
  }
}

void draw() {
  for (RandomWalker rw : randomWalkers) {
    rw.step();
    rw.draw();
  }
}

void mouseDragged() {
  randomWalkers.add(new RandomWalker());
}

class RandomWalker {
  float x = mouseX;
  float y = mouseY;
  float r = random(200,256);
  float g = random(200,256);
  float b = random(200,256);

  void step() {

    x += random(-50, 50);
    y += random(-50, 50);

    if (x < 0) {
      x = width;
    }
    if (x > width) {
      x = 0;
    }

    if (y < 0) {
      y = height;
    }
    if (y > height) {
      y = 0;
    }
  }

  void draw() {
    //stroke(r, g, b);
    //noStroke();
    fill(r,g,b,10);
    if(get(int(x),int(y))== color(200,200,200)) {
      //point(x, y);
      rect(x,y,250,250);
  }
  }
}
