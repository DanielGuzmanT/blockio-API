class Block {

  int x;
  int y;
  String fillColor;
  String strokeColor;

  Block(x, y, fillColor) {
    this.x = x;
    this.y = y;
    this.fillColor = fillColor;
    this.strokeColor = "white";
  }

  void update() {
    this.x++;
    this.y++;
    
    if (x>50) {
      x=0;
      y=0;
    }
  }
}