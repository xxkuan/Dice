int total = 0;
int row = 0;
int col = 0;
/*
to do list
add rotation
working text that shows total
*/
  void setup()
  {
      noLoop();
      size(500, 500);
      background(140, 140, 140);

  }
  void draw(){
  background(140, 140, 140);
  total = 0;
  row = 0;
  col = 0;
  for (int y = 40; y < 480; y += 25){
    row += 1;
    for (int x = 15; x < 480; x += 25){
    Die n = new Die(x, y);
    n.show();
    }
  }
  fill(0);
  for (int x = 15; x < 480; x += 25){col += 1;} // I couldn't count in the loop so I was lazy
  text("Total: " + total, 225, 20);
  text("Rows: " + row + " Cols: " + col, 205, 32);
  }
  void mousePressed(){
      redraw();
  }
  class Die //models one single dice cube
  {
      int aX, aY, value;
      
      Die(int x, int y) //constructor
      {
          aX = x;
          aY = y;
          value = (int)(Math.random()*6) + 1;
      }
      void show()
      {
          total += value;
          fill(256, 256, 256);
          stroke(0, 0, 0);
          strokeWeight(2);
          rect(aX, aY, 20, 20);
          fill(0, 0, 0);
          
          //
          if (value == 1){
          ellipse(aX + 10, aY + 10, 3, 3); 
          }
          else if (value == 2){
          ellipse(aX + 6, aY + 10, 3, 3);
          ellipse(aX + 14, aY + 10, 3, 3);
          }
          else if (value == 3){
          ellipse(aX + 6, aY + 6, 3, 3);
          ellipse(aX + 10.5, aY + 10.5, 3, 3);
          ellipse(aX + 15, aY + 15, 3, 3);
          }
          else if (value == 4){
          ellipse(aX + 6, aY + 6, 3, 3);
          ellipse(aX + 14, aY + 6, 3, 3);
          ellipse(aX + 6, aY + 14, 3, 3);
          ellipse(aX + 14, aY + 14, 3, 3);            
          }
          else if (value == 5){
          ellipse(aX + 6, aY + 6, 3, 3);
          ellipse(aX + 15, aY + 6, 3, 3);
          ellipse(aX + 10.5, aY + 10.5, 3, 3);
          ellipse(aX + 6, aY + 15, 3, 3);
          ellipse(aX + 15, aY + 15, 3, 3);
          }
          else if (value == 6){
          ellipse(aX + 5, aY + 6, 3, 3);
          ellipse(aX + 10.5, aY + 6, 3, 3);
          ellipse(aX + 16, aY + 6, 3, 3);
          ellipse(aX + 5, aY + 14, 3, 3);
          ellipse(aX + 10.5, aY + 14, 3, 3);
          ellipse(aX + 16, aY + 14, 3, 3);
          
            
          
            
          }
          

      }
  }
