import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
AudioPlayer soundEffect0, soundEffect1;
//
Boolean activateWindow=false;
//
void setup() {
  size(300, 300);
  loadMusic();
} //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
  //
  /* //Debugging the Effective Length of the Sound Effect to code a delay
   println ( soundEffect0.position(), soundEffect0.length() );
   println ("When does the sound stop? Indicates delay");
   */
  //
} //End draw
//
void keyPressed() {
  //
  //Play sound effect when I press a key, including delay
  soundEffect1.loop();
  //soundEffect0.rewind();
  println( "KeyPressed:", soundEffect0.length() );
  if ( key == '1' ) song0.loop(0);
} //End keyPressed
//
void mousePressed() {
  if ( activateWindow==false ) activateWindow = true;
} //End mousePressed
//
//End MAIN Program
