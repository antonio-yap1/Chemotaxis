class Bacteria{
  int x,y,mycolor1;
   Bacteria(){
    x=(int)(Math.random()*500)-1;;
    y=(int)(Math.random()*500)-1;;
    mycolor1= color(255,0,0);
  }
  
  void move(){
    x += (int)(Math.random()*5)-2;
    y+= (int)(Math.random()*5)-2;
    if(x<0)
    x=1;
    if(x>500)
    x=499;
    if(y<0)
    y=1;
    if(y>500)
    y=499;
    if(mouseX>x)
    x+=(int)(Math.random()*5)-1;
    else   
    x+=(int)(Math.random()*5)-3;
    if(mouseY>y)
    y+=(int)(Math.random()*5)-1;
    else
    y+=(int)(Math.random()*5)-3;
  }
  
  void show(){
    fill(mycolor1);
    ellipse(x,y,30,30);
  }
}



Bacteria [] group= new Bacteria[(int)(Math.random()*15)+1];
Bacteria bob= new Bacteria();

void setup(){
  size(500,500);
  for(int i =0; i<group.length; i++){
  group[i]= new Bacteria();
}
}





void draw(){
  background(0);
  for(int i =0; i<group.length;i++){
    group[i].show();
    group[i].move();
  }       
}    
