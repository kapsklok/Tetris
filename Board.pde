class Board {
  
  boolean[][] matrix;
  int wide, high;
  
  int tileLength;
  
  public Board( int wide, int high) {
    this.wide = wide;
    this.high = high;
    this.matrix = new boolean[this.wide][this.high];
    
    this.tileLength = (height - 50) / high;
    System.out.println((height - 50) / high);
    
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
        rect(10 + j * tileLength, height - 25 - tileLength - i * tileLength, tileLength, tileLength);
      }
      
    }
    
  }
}