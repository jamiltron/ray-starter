#include "raylib.h"

int main(void) {
  const int screenWidth = 800;
  const int screenHeight = 600;

  InitWindow(screenWidth, screenHeight, "raystarter");

  SetTargetFPS(60);
  while (!WindowShouldClose()) {
    BeginDrawing();
    ClearBackground(GREEN);
    EndDrawing();
  }

  CloseWindow();
  return 0;
}
