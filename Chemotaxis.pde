int pt = 3;
class circle{
  //member variables
  int myX, myY, a, b, c;
  //Constructor
  circle(){
myX = (int)(Math.random()*300) + 100;
myY = (int)(Math.random()*300) + 100;
a = (int)(Math.random()*256);
b = (int)(Math.random()*256);
c = (int)(Math.random()*256);}

 void walk(){
  if (pt == 1){
      if (myX < 390 && myX > 110)
      myX = myX + (int)(Math.random()*3)-1;
      else if (myX < 110)
      myX = myX + (int)(Math.random()*4);
      else
      myX = myX - (int)(Math.random()*4);
  
      if (myY < 390 && myY > 110)
      myY = myY + (int)(Math.random()*3)-1;
      else if (myY < 110)
      myY = myY + (int)(Math.random()*4);
      else
      myY = myY - (int)(Math.random()*4);
  }
  else if (pt == 2){
      if (myX < 390 && myX > 110)
      myX = myX + (int)(Math.random()*7)-3;
      else if (myX < 110)
      myX = myX + (int)(Math.random()*4);
      else
      myX = myX - (int)(Math.random()*4);
  
      if (myY < 390 && myY > 110)
      myY = myY + (int)(Math.random()*3)-1;
      else if (myY < 110)
      myY = myY + (int)(Math.random()*4);
      else
      myY = myY - (int)(Math.random()*4);
  }
  else if (pt == 3){
    if (myX < 390 && myX > 110)
      myX = myX + (int)(Math.random()*11)-5;
      else if (myX < 110)
      myX = myX + (int)(Math.random()*5);
      else
      myX = myX - (int)(Math.random()*5);
  
      if (myY < 390 && myY > 110)
      myY = myY + (int)(Math.random()*3)-1;
      else if (myY < 110)
      myY = myY + (int)(Math.random()*5);
      else
      myY = myY - (int)(Math.random()*5);
  }
  else if (pt == 4){
    if (myX < 390 && myX > 110)
      myX = myX + (int)(Math.random()*15)-7;
      else if (myX < 110)
      myX = myX + (int)(Math.random()*4);
      else
      myX = myX - (int)(Math.random()*4);
  
      if (myY < 390 && myY > 110)
      myY = myY + (int)(Math.random()*15)-7;
      else if (myY < 110)
      myY = myY + (int)(Math.random()*6);
      else
      myY = myY - (int)(Math.random()*6);
  }
  else if (pt == 5){
     if (myX < 390 && myX > 110)
      myX = myX + (int)(Math.random()*19)-9;
      else if (myX < 110)
      myX = myX + (int)(Math.random()*10);
      else
      myX = myX - (int)(Math.random()*10);
  
      if (myY < 390 && myY > 110)
      myY = myY + (int)(Math.random()*19)-9;
      else if (myY < 110)
      myY = myY + (int)(Math.random()*10);
      else
      myY = myY - (int)(Math.random()*10);
  }
  else if (pt == -1)
pt = 0;
  else if (pt >= 6){
if(mouseX > myX)
myX = myX + (int)(Math.random()*10)+1;
else
myX = myX - (int)(Math.random()*10)-1;
if(mouseY > myY)
myY = myY + (int)(Math.random()*10)+1;
else
myY = myY - (int)(Math.random()*10)-1;
  }
 }//end of walk
 
 
 void show(){
 fill (a,b,c);
 noStroke();
 ellipse(myX, myY, 10, 10);
 }//end of show

}//end of class

circle bob = new circle();
circle fred[] = new circle[140];

void setup(){
  size(500,500);
  for(int i = 0; i < fred.length; i++)
  fred[i] = new circle();
}
void keyPressed(){
if (key == CODED){
  if (pt >= 0 && pt < 6){
  if (keyCode == UP){
    pt+=1;
    System.out.println(pt);}
    else if (keyCode == DOWN){
    pt-=1;  
    System.out.println(pt);}
}}}
void draw(){
  background(0);
  if (pt <= 5){
  //rectangle
  fill(255);
  rect(100,100,300,300,15);
  
  //barometer and thermometer
  rect(425,100,50,300,10);
  rect(25,100,50,300,10);
  noStroke();
  fill(0);
  ellipse(450,375,25,25);
  fill(255,0,0);
  ellipse(50,375,25,25);
  }
  int a = 110;
  int b = 260;
  if (pt == 4){
  fill(0);
  rect(442.5,a+50,15,b-50,25);
  fill(255,0,0);
  rect(42.5,a+50,15,b-50,25);}
  else if (pt == 5){
  fill(0);
  rect(442.5,a,15,b,25);
  fill(255,0,0);
  rect(42.5,a,15,b,25);}
  else if (pt == 3){
  fill(0);
  rect(442.5,a+100,15,b-100,25);
  fill(255,0,0);
  rect(42.5,a+100,15,b-100,25);}
  else if (pt == 2){
  fill(0);
  rect(442.5,a+150,15,b-150,25);
  fill(255,0,0);
  rect(42.5,a+150,15,b-150,25);}
  else if (pt == 1){
  fill(0);
  rect(442.5,a+200,15,b-200,25);
  fill(255,0,0);
  rect(42.5,a+200,15,b-200,25);}
  else if (pt < 1){
  fill(0);
  rect(442.5,a+250,15,b-250,25);
  fill(255,0,0);
  rect(42.5,a+250,15,b-250,25);}
  
  //lines
  stroke(0);
  for(int i = 110; i <= 400; i+=50)
  line(68,i,75,i);
  for(int i = 110; i <= 400; i+=50)
  line(475,i,468,i);
  
  //text
  if(pt <= 5){
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("PV=nRT Ideal Gas Model", 250, 60);
  textSize(15);
  text("Temperature",50,425);
  text("Pressure",450,425);
  }
  if (pt == 0 || pt == -1){
    fill(255,0,0);
    text("Absolute Zero",250, 450);
  }
  if (pt == 6){
  fill(255,0,0);
  textSize(20);
  text("You broke the model",250,60);
  text("Now the bacteria run towards your mouse",250,80);
  text("Click to reset the model",250,100);
  
  }
    
  bob.walk();
  bob.show();
for(int i = 0; i < fred.length; i++){
   fred[i].show();
   fred[i].walk();
 }
 
   if (pt == 6)
 if (mousePressed == true)
 pt = 5;
 
}//end of draw
