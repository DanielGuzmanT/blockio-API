import 'dart:html';

CanvasElement canvas;
CanvasRenderingContext2D context;

void main() {
  canvas = querySelector("#canvas");
  context = canvas.getContext("2d");
}