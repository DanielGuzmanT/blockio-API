import 'dart:html';
import 'dart:math';

CanvasElement canvas;
CanvasRenderingContext2D context;

const int CELL_SIZE = 10;


void main() {
  canvas = querySelector("#canvas");
  context = canvas.getContext("2d");

  drawCell(new Point(10, 10), "salmon");
}


void drawCell(Point coords, String color) {
  context..fillStyle = color
  ..strokeStyle = "white";

  final int x = coords.x * CELL_SIZE;
  final int y = coords.y * CELL_SIZE;
  
  context..fillRect(x, y, CELL_SIZE, CELL_SIZE)
  ..strokeRect(x, y, CELL_SIZE, CELL_SIZE);
}