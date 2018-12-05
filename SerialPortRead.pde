import processing.serial.*; 
import java.io.IOException;
Serial port, port2; 
String val="";
int index=0;
int index2=0;
String X="";
String Y="";
int iX=0;
int iY=0;
void setup(){
delay(4000);
port = new Serial(this,"COM9", 9600); 
port.bufferUntil('.');
delay(4000);
port2 = new Serial(this,"COM8", 9600); 
delay(4000);
}
void draw()
{
  println(iX);
         if (iY<-30){
         port2.write('5');
         delay(15);
         }
         if (iY>30){
         port2.write('4');
         delay(15);
         }
         if (iX<-30){
         port2.write('3');
         delay(15);
         }
         if (iX>30){
         port2.write('2');
         delay(15);
         }
         
         delay(100);
        
}
void serialEvent (Serial port) 
{
  val = port.readStringUntil('.');
  index = val.indexOf(",");
  X= val.substring(0, index);
  index2 = val.indexOf(".");
  Y=val.substring(index+1,index2);
  iX=int(X);
  iY=int(Y);
}