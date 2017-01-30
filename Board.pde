class Board {
  
  boolean[][] matrix;
  int wide, high;
  
  int edgeBuffer;
  int tileLength;
  
  public Board( int wide, int high) {
    this.wide = wide;
    this.high = high;
    this.matrix = new boolean[this.wide][this.high];
    
    edgeBuffer = 25;
    this.tileLength = (height - 2 * edgeBuffer) / high;

  }
  
  /**
  * Prints the gameboard to the console
  */
  
  public void printBoard() {
    for (int i = this.high - 1; i >= 0; i--) {
      for (int j = 0; j < this.wide; j++) {
        if (matrix[j][i]) {
          System.out.print("[x]");
        } else {
          System.out.print("[ ]");
        }
      }
      System.out.println();
    }
    System.out.println();
  }
  
  /**
  * Draws the gameboard to the sketch window
  */
  public void drawBoard() {
    
    for (int i = this.high - 1; i >= 0; i--) {
      
      for (int j = 0; j < this.wide; j++) {
        if (matrix[j][i]) {
          fill(255);
        } else {
          fill(100);
        }
        rect(edgeBuffer + j * tileLength, height - edgeBuffer - tileLength - i * tileLength, tileLength, tileLength);
      }
      
    }
  }
  
}