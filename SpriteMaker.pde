void setup(){
size(640, 640);
background(255);
strokeWeight(1);
stroke(64, 64, 64);



}

void draw(){
  int[] myValues = {0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,};
   int count = 0;
                    
  //Draw grid of 8x8 sqaures 
for(int i = 0 ; i < 640; i+=64)
{
  for (int j = 0; j < 640; j+=64)
  {
        strokeWeight(1);
        if (myValues[count] != 0) {
         fill(255);
        }
        else {
          fill(0);
        }
         rect (i, j, 64, 64); 
      `count += 1;   
  }
}



 //fill(155, 0, 0);
// rect(60, 60, 40, 40);
//rect(120, 40, 20, 20);
 
}


  
