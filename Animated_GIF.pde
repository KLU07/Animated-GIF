ArrayList<PImage> gif;

int n = 0;
//===============================================================
void setup() {

  size(600,400);
  gif = new ArrayList<PImage>();   //build the list
  
  int i = 0;
  while (i < 7) {  //7 is number of frames in GIF
    gif.add(loadImage("frame_" + i + "_delay-0.1s.gif"));
    i = i + 1;
  }
  
  frameRate(8);


}


//===============================================================
void draw() {

  //DRAW IMAGE
  PImage frame = gif.get(n);
  image(frame,0,0,width,height);
  n++;
  if (n > 6) n = 0;
}
