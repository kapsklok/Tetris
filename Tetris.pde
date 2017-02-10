Board b;
Config conf;

void settings() {
  conf = new Config();
  size(conf.DISP_WIDTH, conf.DISP_HEIGHT, P2D);
}

void setup() {
  frameRate(conf.FRAMERATE);
  
  b = new Board(5, 7);
  b.matrix[2][4] = true;
  
}

void draw() {
  background(0);
  b.drawBoard();
}