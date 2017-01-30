Board b;
Config conf;

void settings() {
  b = new Board(5, 7);
  conf = new Config();
  size(conf.DISP_WIDTH, conf.DISP_HEIGHT, P2D);
  b.array[2][4] = true;
}

void setup() {
  frameRate(conf.FRAMERATE);
}

void draw() {
  b.printBoard();
  
}