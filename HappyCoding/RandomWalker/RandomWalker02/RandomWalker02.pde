ArrayList<RandomWalker> randomWalkers = new ArrayList<RandomWalker>();

void setup() {
  size(500, 500);

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
  float r = random(256);
  float g = random(256);
  float b = random(256);

  void step() {

    x += random(-1, 1);
    y += random(-1, 1);

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
    stroke(r, g, b);
    if(get(int(x),int(y))== color(200,200,200))    point(x, y);
  }
}
