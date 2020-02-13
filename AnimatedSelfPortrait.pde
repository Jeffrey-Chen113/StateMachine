//Self Portrait Assignment
//By Jeffrey Chen

//I made a gif that will change 4 times within 40 "frames". By "frames" I mean whatever amount of time it takes processing to increment up to 40.
//The gif is a sprite of me walking towards the screen.

//These variables are for the overarching states
int state;
final int stateNeutral=1;
final int stateHappy=2;
final int stateSad=3;
final int stateTired=4;
//--------------------------------------

//These are the variables for the emotes
int opac=50;
final int opacUp=1;
final int opacDown=2;
int opacState=opacDown;

//--------------------------------------

//This variable shows the frames
int counter=0;
void setup(){
  size(600,300);
  state=stateNeutral;
}
void draw() {
  //initializing the background
  //BackgroundRoad
  stroke(57,118,40);
  fill(57,118,40);
  rect(-10,230,320,110);
  //BackgroundSky
  stroke(135,206,235);
  fill(135,206,235);
  rect(-10,-10,320,240);
  
  
  if (state==stateNeutral){
    run(0);
    neutralFace(320,40);
  }
  else if (state==stateHappy){
   println("Happy");
    run(4);
    happyFace(320,40);
  }
  else if (state==stateSad){
    run(1);
    sadFace(320,40);
  }
}

void keyPressed(){
  if (key =='1'){
    state=stateNeutral;
  }
  else if (key=='2'){
    state=stateHappy;
    println("state2");
  }
  else if (key=='3'){
    state=stateSad;
  }
}
  

//Function to make the person run
void run(int speed){
  counter=counter+speed;
  println(counter);
  if (counter>80){
    counter=0;
    personF1(0,0);
  }
  else{
    if (counter>=0 && counter<20){
      personF1(0,0);
    }
    else if (counter>=20 && counter<40){
      personF2(0,0);
    }
    else if (counter>=40 && counter<60){
      personF1(0,0);
    }
    else if (counter>=60 && counter<=80){
      personF3(0,0);
    }
  }
}

//Frames of Person

//Frame1 of Person
void personF1(int x,int y){
  stroke(255, 219, 172);
  fill(255, 219, 172);
  beginShape();
  rect(130+x,20+y,40,10);
  rect(110+x,30+y,80,10);
  rect(100+x,40+y,100,40);
  rect(90+x,80+y,120,10);
  rect(100+x,90+y,100,10);
  rect(120+x,100+y,60,10);
  rect(140+x,110+y,20,10);
  endShape(CLOSE);
  //Glasses
  beginShape();
  fill(0);
  stroke(0);
  rect(115+x,90+y,30,10);
  rect(155+x,90+y,30,10);
  rect(115+x,70+y,30,10);
  rect(155+x,70+y,30,10);
  rect(115+x,80+y,10,10);
  rect(135+x,80+y,30,10);
  rect(175+x,80+y,10,10);
  endShape(CLOSE);
  //Hair
  beginShape();
  fill(43,29,14);
  stroke(43,29,14);
  rect(130+x,20+y,40,10);
  rect(110+x,30+y,80,10);
  rect(100+x,40+y,10,30);
  rect(190+x,40+y,10,30);
  rect(110+x,40+y,80,10);
  rect(145+x,50+y,10,10);
  endShape(CLOSE);
  //DefaultLeftLeg
  beginShape();
  fill(21,96,189);
  stroke(21,96,189);
  rect(110+x,210+y,30,20);
  rect(120+x,230+y,20,20);
  rect(130+x,250+y,10,30);
  rect(120+x,270+y,20,10);
  endShape(CLOSE);
  //DefaultRightLeg
  beginShape();
  fill(21+x,96+y,189);
  stroke(21+x,96+y,189);
  rect(160+x,210+y,30,20);
  rect(160+x,230+y,20,20);
  rect(160+x,250+y,10,30);
  rect(160+x,270+y,20,10);
  endShape(CLOSE);
  //DefaultArms
  beginShape();
  fill(20);
  stroke(20);
  rect(120+x,120+y,60,10);
  rect(110+x,130+y,80,20);
  rect(100+x,150+y,100,20);
  rect(90+x,170+y,120,10);
  endShape(CLOSE);
  //Default Hands
  beginShape();
  fill(255, 219, 172);
  stroke(255, 219, 172);
  rect(90+x,180+y,120,20);
  endShape(CLOSE);
  //Torso Base
  beginShape();
  fill(240);
  stroke(240);
  rect(130+x,120+y,40,10);
  rect(120+x,130+y,60,50);
  rect(110+x,180+y,80,30);
  endShape(CLOSE);
  //Top
  beginShape();
  fill(0);
  stroke(0);
  rect(110+x,180+y,10,30);
  rect(180+x,180+y,10,30);
  rect(130+x,120+y,10,90);
  rect(120+x,130+y,10,80);
  rect(160+x,120+y,10,90);
  rect(170+x,130+y,10,80);
  endShape(CLOSE);
}
//Frame2 of Person
void personF2(int x,int y){
  stroke(255, 219, 172);
  fill(255, 219, 172);
  beginShape();
  rect(130+x,20+y,40,10);
  rect(110+x,30+y,80,10);
  rect(100+x,40+y,100,40);
  rect(90+x,80+y,120,10);
  rect(100+x,90+y,100,10);
  rect(120+x,100+y,60,10);
  rect(140+x,110+y,20,10);
  endShape(CLOSE);
  //Glasses
  beginShape();
  fill(0);
  stroke(0);
  rect(115+x,90+y,30,10);
  rect(155+x,90+y,30,10);
  rect(115+x,70+y,30,10);
  rect(155+x,70+y,30,10);
  rect(115+x,80+y,10,10);
  rect(135+x,80+y,30,10);
  rect(175+x,80+y,10,10);
  endShape(CLOSE);
  //Hair
  beginShape();
  fill(43,29,14);
  stroke(43,29,14);
  rect(130+x,20+y,40,10);
  rect(110+x,30+y,80,10);
  rect(100+x,40+y,10,30);
  rect(190+x,40+y,10,30);
  rect(110+x,40+y,80,10);
  rect(145+x,50+y,10,10);
  endShape(CLOSE);
  //LArmBackwards
  beginShape();
  fill(20);
  stroke(20);
  rect(110+x,150+y,10,40);
  rect(100+x,170+y,10,20);
  endShape(CLOSE);
  //LHandBackwards
  beginShape();
  fill(255, 219, 172);
  stroke(255, 219, 172);
  rect(100+x,170,20,20);
  endShape(CLOSE);
  //DefaultLeftLeg
  beginShape();
  fill(21,96,189);
  stroke(21,96,189);
  rect(110+x,210+y,30,20);
  rect(120+x,230+y,20,20);
  rect(130+x,250+y,10,30);
  rect(120+x,270+y,20,10);
  endShape(CLOSE);
  //RLegBackwards
  beginShape();
  fill(11,86,179);
  stroke(11,86,179);
  rect(150+x,210+y,30,30);
  rect(160+x,240+y,10,30);
  rect(170+x,260+y,10,10);
  endShape(CLOSE);
  //Torso Base
  beginShape();
  fill(240);
  stroke(240);
  rect(130+x,120+y,40,10);
  rect(120+x,130+y,60,50);
  rect(110+x,180+y,80,30);
  endShape(CLOSE);
  //Top
  beginShape();
  fill(0);
  stroke(0);
  rect(110+x,180+y,10,30);
  rect(180+x,180+y,10,30);
  rect(130+x,120+y,10,90);
  rect(120+x,130+y,10,80);
  rect(160+x,120+y,10,90);
  rect(170+x,130+y,10,80);
  endShape(CLOSE);
  //RArmForward
  beginShape();
  fill(20);
  stroke(20);
  rect(170+x,130+y,10,10);
  rect(170+x,170+y,10,40);
  rect(180+x,140+y,10,70);
  rect(190+x,160+y,10,50);
  endShape(CLOSE);
  //RHandForward
  beginShape();
  fill(255, 219+y, 172);
  stroke(255, 219+y, 172);
  rect(170+x,190+y,30,20);
  endShape(CLOSE);
}

//Frame3 of Person
void personF3(int x,int y){
  stroke(255, 219, 172);
  fill(255, 219, 172);
  beginShape();
  rect(130+x,20+y,40,10);
  rect(110+x,30+y,80,10);
  rect(100+x,40+y,100,40);
  rect(90+x,80+y,120,10);
  rect(100+x,90+y,100,10);
  rect(120+x,100+y,60,10);
  rect(140+x,110+y,20,10);
  endShape(CLOSE);
  //Glasses
  beginShape();
  fill(0);
  stroke(0);
  rect(115+x,90+y,30,10);
  rect(155+x,90+y,30,10);
  rect(115+x,70+y,30,10);
  rect(155+x,70+y,30,10);
  rect(115+x,80+y,10,10);
  rect(135+x,80+y,30,10);
  rect(175+x,80+y,10,10);
  endShape(CLOSE);
  //Hair
  beginShape();
  fill(43,29,14);
  stroke(43,29,14);
  rect(130+x,20+y,40,10);
  rect(110+x,30+y,80,10);
  rect(100+x,40+y,10,30);
  rect(190+x,40+y,10,30);
  rect(110+x,40+y,80,10);
  rect(145+x,50+y,10,10);
  endShape(CLOSE);
  //RArmBackwards
  beginShape();
  fill(20);
  stroke(20);
  rect(180+x,150+y,10,40);
  rect(190+x,170+y,10,20);
  endShape(CLOSE);
  //RHandBackwards
  beginShape();
  fill(255, 219, 172);
  stroke(255, 219, 172);
  rect(180+x,170+y,20,20);
  endShape(CLOSE);
  //DefaultRightLeg
  beginShape();
  fill(21,96,189);
  stroke(21,96+y,189);
  rect(160+x,210+y,30,20);
  rect(160+x,230+y,20,20);
  rect(160+x,250+y,10,30);
  rect(160+x,270+y,20,10);
  endShape(CLOSE);
  //LLegBackwards
  beginShape();
  fill(11,86,179);
  stroke(11,86,179);
  rect(120+x,210+y,30,30);
  rect(130+x,240+y,10,30);
  rect(120+x,260+y,10,10);
  endShape(CLOSE);
  //Torso Base
  beginShape();
  fill(240);
  stroke(240);
  rect(130+x,120+y,40,10);
  rect(120+x,130+y,60,50);
  rect(110+x,180+y,80,30);
  endShape(CLOSE);
  //Top
  beginShape();
  fill(0);
  stroke(0);
  rect(110+x,180+y,10,30);
  rect(180+x,180+y,10,30);
  rect(130+x,120+y,10,90);
  rect(120+x,130+y,10,80);
  rect(160+x,120+y,10,90);
  rect(170+x,130+y,10,80);
  endShape(CLOSE);
  //LArmForward
  beginShape();
  fill(20);
  stroke(20);
  rect(120+x,120+y,10,10);
  rect(120+x,170+y,10,40);
  rect(110+x,140+y,10,70);
  rect(100+x,160+y,10,50);
  endShape(CLOSE);
  //LHandForward
  beginShape();
  fill(255, 219, 172);
  stroke(255, 219, 172);
  rect(100,190,30,20);
  endShape(CLOSE);
}

void sadFace(int x,int y){
  //Outline
  stroke(0);
  fill(0);
  beginShape();
  rect(0+x,30+y,10,50);
  rect(40+x,0+y,180,10);
  rect(20+x,10+y,20,10);
  rect(10+x,20+y,10,10);
  rect(10+x,80+y,10,10);
  rect(20+x,90+y,20,10);
  rect(40+x,100+y,180,10);
  rect(250+x,30+y,10,50);
  rect(240+x,80+y,10,10);
  rect(220+x,90+y,20,10);
  //FaceColour
  //stroke(217,219,186);
  //fill(217,219,186);//Happy
  stroke(152,214,214);
  fill(152,214,214);//Sad
  beginShape();
  rect(40+x,10+y,200,10);
  rect(20+x,20+y,230,10);
  rect(10+x,30+y,240,50);
  rect(20+x,80+y,220,10);
  rect(40+x,90+y,180,10);
  endShape(CLOSE);
  
  //Left Eye
  stroke(0);
  fill(0);
  beginShape();
  rect(70+x,30+y,20,10);
  rect(60+x,40+y,10,10);
  rect(90+x,40+y,10,10);
  rect(70+x,50+y,20,10);
  //Right Eye
  rect(170+x,30+y,20,10);
  rect(160+x,40+y,10,10);
  rect(190+x,40+y,10,10);
  rect(170+x,50+y,20,10);
  //Smile
  rect(105+x,65+y,10,10);
  rect(115+x,75+y,10,10);
  rect(125+x,75+y,10,10);
  rect(135+x,75+y,10,10);
  rect(145+x,65+y,10,10);
  endShape(CLOSE);
  
  //CryEffects
  stroke(0,20,240,opac);
  fill(0,20,240,opac);
  beginShape();
  rect(70+x,70+y,20,10);
  rect(70+x,80+y,10,10);
  rect(170+x,70+y,20,10);
  rect(170+x,80+y,10,10);
  endShape(CLOSE);
  opacityChange(2);
}

//HappyEmote
void happyFace(int x,int y){
  //Outline
  stroke(0);
  fill(0);
  beginShape();
  rect(0+x,30+y,10,50);
  rect(40+x,0+y,180,10);
  rect(20+x,10+y,20,10);
  rect(10+x,20+y,10,10);
  rect(10+x,80+y,10,10);
  rect(20+x,90+y,20,10);
  rect(40+x,100+y,180,10);
  rect(250+x,30+y,10,50);
  rect(240+x,80+y,10,10);
  rect(220+x,90+y,20,10);
  //FaceColour
  stroke(217,219,186);
  fill(217,219,186);//Happy
  beginShape();
  rect(40+x,10+y,200,10);
  rect(20+x,20+y,230,10);
  rect(10+x,30+y,240,50);
  rect(20+x,80+y,220,10);
  rect(40+x,90+y,180,10);
  endShape(CLOSE);
  
  //HappyEmote
  //Left Eye
  stroke(0);
  fill(0);
  beginShape();
  rect(70+x,30+y,20,10);
  rect(60+x,40+y,10,10);
  rect(90+x,40+y,10,10);
  rect(70+x,50+y,20,10);
  //Right Eye
  rect(170+x,30+y,20,10);
  rect(160+x,40+y,10,10);
  rect(190+x,40+y,10,10);
  rect(170+x,50+y,20,10);
  //Smile
  rect(105+x,65+y,10,10);
  rect(115+x,75+y,10,10);
  rect(125+x,75+y,10,10);
  rect(135+x,75+y,10,10);
  rect(145+x,65+y,10,10);
  endShape(CLOSE);
  
  //BlushEffects
  stroke(255,192,203,opac);
  fill(255,192,203,opac);
  beginShape();
  //LeftCheek
  rect(30+x,60+y,10,10);
  rect(40+x,70+y,10,10);
  rect(50+x,60+y,10,10);
  rect(60+x,70+y,10,10);
  //RightCheek
  rect(200+x,60+y,10,10);
  rect(190+x,70+y,10,10);
  rect(220+x,60+y,10,10);
  rect(210+x,70+y,10,10);
  endShape(CLOSE);
  opacityChange(5);
}
//NeutralFace
void neutralFace(int x,int y){
  //Outline
  stroke(0);
  fill(0);
  beginShape();
  rect(0+x,30+y,10,50);
  rect(40+x,0+y,180,10);
  rect(20+x,10+y,20,10);
  rect(10+x,20+y,10,10);
  rect(10+x,80+y,10,10);
  rect(20+x,90+y,20,10);
  rect(40+x,100+y,180,10);
  rect(250+x,30+y,10,50);
  rect(240+x,80+y,10,10);
  rect(220+x,90+y,20,10);
  //FaceColour
  stroke(217,219,186);
  fill(217,219,186);//Happy
  beginShape();
  rect(40+x,10+y,200,10);
  rect(20+x,20+y,230,10);
  rect(10+x,30+y,240,50);
  rect(20+x,80+y,220,10);
  rect(40+x,90+y,180,10);
  endShape(CLOSE);
  
  //HappyEmote
  //Left Eye
  stroke(0);
  fill(0);
  beginShape();
  rect(70+x,30+y,20,10);
  rect(60+x,40+y,10,10);
  rect(90+x,40+y,10,10);
  rect(70+x,50+y,20,10);
  //Right Eye
  rect(170+x,30+y,20,10);
  rect(160+x,40+y,10,10);
  rect(190+x,40+y,10,10);
  rect(170+x,50+y,20,10);
  //Smile
  rect(115+x,75+y,10,10);
  rect(125+x,75+y,10,10);
  rect(135+x,75+y,10,10);
  endShape(CLOSE);
  
  //BlushEffects
  stroke(255,192,203,opac);
  fill(255,192,203,opac);
  beginShape();
  //LeftCheek
  rect(30+x,60+y,10,10);
  rect(40+x,70+y,10,10);
  rect(50+x,60+y,10,10);
  rect(60+x,70+y,10,10);
  //RightCheek
  rect(200+x,60+y,10,10);
  rect(190+x,70+y,10,10);
  rect(220+x,60+y,10,10);
  rect(210+x,70+y,10,10);
  endShape(CLOSE);
  opacityChange(4);
}

void opacityChange(int emotion){
  if (opacState==opacDown){
    opac=opac+emotion;
    println(opac);
  }
  if (opac>=250 && opacState==opacDown){
    opacState=opacUp;
    println(opac);
  }
  if (opacState==opacUp){
    opac=opac-emotion;
    println(opac);
  }
  if (opac<=50 && opacState==opacUp){
    opacState=opacDown;
    println(opac);
  }
}
