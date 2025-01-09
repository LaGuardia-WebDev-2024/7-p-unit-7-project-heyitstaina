//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var cloudX = 20;
var rightX = 386;
var sunSize = 30;
//🟢Draw Procedure - Runs on Repeat
draw = function(){
  noStroke()
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
    // The sun
  fill(255, 204, 0);
  ellipse(130, 36, sunSize+70, sunSize+40);

   // The left cloud
fill(210, 251, 252);
 ellipse(cloudX, 75, 300, 50);
 ellipse(cloudX, 52, 150, 70);
 
   // The right cloud
fill (150, 194, 217);
ellipse(rightX, 175, 300, 50);
 ellipse(rightX, 152, 190, 70);
  ellipse(rightX, 132, 110, 70);

  sunSize = sunSize+3;
 cloudX = cloudX + 1;
rightX = rightX - 1;


if(cloudX > 600){
cloudX = 200;
rightX = 250;
sunSize = 100;}
}


//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
