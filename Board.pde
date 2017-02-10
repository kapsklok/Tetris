class Board {
  
  boolean[][] matrix;
  int wide, high;
  
  int xpos, ypos;
  int edgeBuffer;
  int tileLength;
  
  public Board( int wide, int high) {
    this.wide = wide;
    this.high = high;
    this.matrix = new boolean[this.wide][this.high];
    
    edgeBuffer = 25;
    this.tileLength = (height - 2 * edgeBuffer) / high;

  }
  
  public void startPiece(boolean[][] piece) {
    xpos = wide / 2;
    ypos = high;
    
  }
  
  /**
  *  Checks if movement in a specific direction is possible
  *  0  - down
  *  1  - right
  *  -1 - left
  */
  private boolean isMovementPossible(boolean[][] piece, int direction) {
    switch(direction) {
      case -1:
      
      for (int i = 0; i < piece.length; i++) {
        //for each row in the piece
        if (piece[i][0] && matrix[ypos + i][xpos - 1] ) {
          return false;
        }
      }
      
      break;
      
      case 0:
      
      for (int i = 0; i < piece[0].length; i++) {
        // for each column across the bottom
        if (piece[piece.length][i] && matrix[xpos +i][ypos + piece.length]) {
          return false;
        }
      }
      
      break;
      
      
      
      case 1:
      
      //check the right
      for (int i = 0; i < piece.length; i++) {
        //for each row in the piece
        if (piece[i][piece[i].length] && matrix[ypos + i][xpos +piece[i].length +1] ) {
          return false;
        }
      }
      
      break;
    }
    return true;
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