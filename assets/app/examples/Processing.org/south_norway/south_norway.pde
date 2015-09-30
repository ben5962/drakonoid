// DRAKON-Processing.org demo by Stepan Mitkin stipan.mitkin@gmail.com
// July 2013
// http://drakon-editor.sourceforge.net/

// Displacement and Sky sketches are autogenerated.

int screenWidth = 800;
int screenHeight = 500;

void setup() {
  size(screenWidth, screenHeight, P2D);
  noLoop();
}

// Draws a typical landscape of South Norway
// using the midpoint displacement algorithm.
// See http://www.gameprogrammer.com/fractal.html
void draw() {
  noStroke();
  
  background(200, 200, 255);
  sky();

  fill(160, 160, 250);
  ArrayList<PVector> far = createFar();
  drawSkyline(far, 3, 0.4, 0.05);

  fill(80, 120, 150);
  ArrayList<PVector> middle = createMiddle();
  drawSkyline(middle, 4, 0.2, 0.05);
  
  fill(0, 80, 45);
  ArrayList<PVector> valley = createValley();
  drawSkyline(valley, 4, 0.4, 0.03);

  fill(0, 50, 15);
  ArrayList<PVector> slope = createSlope();
  drawSkyline(slope, 6, 0.2, 0.3);
}

void add(ArrayList<PVector> vertices, float x, float y) {
  PVector v = new PVector(
    x * screenWidth, 
    y * screenHeight);
  vertices.add(v);
}

ArrayList<PVector> createFar() {
  ArrayList<PVector> valley = new ArrayList<PVector>();

  add(valley, 0.0, 0.4);
  add(valley, 0.2, 0.32);
  add(valley, 0.7, 0.3);
  add(valley, 1.0, 0.38);
  return valley;
}


ArrayList<PVector> createMiddle() {
  ArrayList<PVector> valley = new ArrayList<PVector>();

  add(valley, 0.3, 0.52);
  add(valley, 0.6, 0.36);
  add(valley, 1.0, 0.34);
  return valley;
}

ArrayList<PVector> createValley() {
  ArrayList<PVector> valley = new ArrayList<PVector>();
  add(valley, 0.0, 0.2);
  add(valley, 0.3, 0.3);
  add(valley, 0.45, 0.5);
  add(valley, 0.6, 0.52);
  add(valley, 0.75, 0.36);
  add(valley, 1.0, 0.26);
  valley = moveUp(valley, -0.1 * screenHeight);
  return valley;
}

ArrayList<PVector> createSlope() {
  ArrayList<PVector> valley = new ArrayList<PVector>();
  add(valley, 0.0, 0.4);
  add(valley, 0.3, 0.6);
  add(valley, 0.6, 1.0);
  return valley;
}

void sky() {
  // The Sky class does not make much sense.
  // It just demonstrates how to work with classes in DRAKON-Processing.org
  // (see Sky.drn)
  Sky skyObj = new Sky(
    screenWidth, 180,
    color(90, 90, 200),
    color(200, 200, 255)
  );

  skyObj.draw();
}





