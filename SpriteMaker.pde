void setup(){
size(320, 320);
background(255);
strokeWeight(1);
stroke(64, 64, 64);
}

void draw(){
  //Draw grid of 20x20 sqaures 
for(int i = 0 ; i < 320; i+=20)
{
  for (int j = 0; j < 320; j+=20)
  {
          fill(0);
         rect (i, j, 20, 20); 
  }
  
  
}
  //fill(155, 0, 0);
  //rect(60, 60, 40, 40);
  //rect(120, 40, 20, 20);
  
}
