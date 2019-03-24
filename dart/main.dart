import 'dart:html';
import 'dart:math';
import 'classes/Block.dart';

CanvasElement canvas;
CanvasRenderingContext2D context;

const int CELL_SIZE = 10;
const num GAME_SPEED = 20;
num _lastTimeStamp = 1;


int x = 0;
int y = 0;

void main() {
  canvas = querySelector("#canvas");
  context = canvas.getContext("2d");

  var block = new Block(0, 0, "green");
  run(block);
}


void drawCell(Block block) {
  context..fillStyle = block.fillColor
  ..strokeStyle = block.strokeColor;

  final int x = block.x * CELL_SIZE;
  final int y = block.y * CELL_SIZE;
  
  context..fillRect(x, y, CELL_SIZE, CELL_SIZE)
  ..strokeRect(x, y, CELL_SIZE, CELL_SIZE);
}


void clear() {
  context..fillStyle = "white"
  ..fillRect(0, 0, canvas.width, canvas.height);
}


Future run(Block block) async {
  update(block, await window.animationFrame);
}

void update(Block block, num delta) {
  final num diff = delta - _lastTimeStamp;

  if (diff > GAME_SPEED) {
    _lastTimeStamp = delta;
    clear();
    drawCell(block);
  
    block.update();
  }

  // keep looping
  run(block);
}
