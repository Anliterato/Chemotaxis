 Bacteria [] bob;
 void setup()   
 { 
   size(1000,1000);
   bob = new Bacteria[50];
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {
   background(0);
   for(int i = 0; i < bob.length; i++){
     bob[i].move();
     bob[i].show();
   }
 }  
 class Bacteria    
 { 
   int myColor1,myColor2, myColor3, realColor, myX, myY;
   Bacteria(){
     myColor1 = (int)(Math.random() * 256);
     myColor2 = (int)(Math.random() * 256);
     myColor3 = (int)(Math.random() * 256);
     realColor = color(myColor1,myColor2,myColor3);
     myX = (int)(Math.random() * 1000) + 1;
     myY = (int)(Math.random() * 1000) + 1;
   }
   
   void move(){
    myX = myX + (int)(Math.random() * 9) - 4;
    myY = myY + (int)(Math.random() * 9) - 4;
   }
   
   void show(){
     fill(realColor);
     stroke(realColor);
     line(myX,myY,mouseX,mouseY);
     ellipse(myX, myY, 25, 25);
     fill(0);
     stroke(255);
     ellipse(mouseX, mouseY, 25,25);
   }
 }
