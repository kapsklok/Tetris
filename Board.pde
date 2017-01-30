<<<<<<< HEAD
class Board {
  
  boolean[][] array;
  int width, height;
  
  public Board( int wide, int high) {
    this.width = wide;
    this.height = high;
    this.array = new boolean[this.width][this.height];
  }
  
  public void printBoard() {
    for (int i = this.height - 1; i >= 0; i--) {
      for (int j = 0; j < this.width; j++) {
        if (array[j][i]) {
          System.out.print("[x]");
        } else {
          System.out.print("[ ]");
        }
      }
      System.out.println();
    }
    System.out.println();
  }
  
=======
class Board {
  
  boolean[][] array;
  int width, height;
  
  public Board( int wide, int high) {
    this.width = wide;
    this.height = high;
    this.array = new boolean[this.width][this.height];
  }
  
  public void printBoard() {
    for (int i = this.height - 1; i >= 0; i--) {
      for (int j = 0; j < this.width; j++) {
        if (array[j][i]) {
          System.out.print("[x]");
        } else {
          System.out.print("[ ]");
        }
      }
      System.out.println();
    }
    System.out.println();
  }
  
>>>>>>> ba864a813337b9095ef01175cd4dd4107dd46765
}