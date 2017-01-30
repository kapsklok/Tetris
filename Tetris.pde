Board b;
Config conf;

void settings() {
  conf = new Config();
  size(conf.DISP_WIDTH, conf.DISP_HEIGHT, P2D);
  b = new Board(5, 7);
  b.matrix[2][4] = true;
}

void setup() {
  frameRate(conf.FRAMERATE);
}

void draw() {
  background(0);
  b.drawBoard();
}