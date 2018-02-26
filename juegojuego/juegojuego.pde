//variables universales
int pantalla=0;
boolean huevitos1=false;//referencia a que paso ayer 
boolean huevitos2=false;/////////////////////////////boolean---->verdadero|falso//////////////////////
int coin1;
int coin2;
int turno=1;
//variables universales del fondo pantalla 0
float a;
float x;
float y;
float r;
float dx;
float dy;
//invocación de creaturas------------------------------------------>>
  jugador toth;
  jugador wizard;
  jugador principeGato;
  jugador bestia;
  jugador ellipc;
//coin jugador------------------------------------------------------>>
  jugador p1;
  jugador p2;
//funciones------------->
void setup()
{
  size(700,700);
  //declararción de "new" creatura
  toth = new jugador(100,600,0);  
  wizard = new  jugador(200,900,1);
  principeGato = new jugador(100,600,2);
  bestia = new jugador(100,500,3);
  ellipc = new  jugador(150,550,4);
}

void draw()
{
  pantallas();
}

void pantallas()
{

//-------------------|------------------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|--|-|-|-------------------------------------------------------------------------|-|-|-|-||-|-|-|-|-|-|-|-|
  if(pantalla==0)//pantalla titulo del juego, historia y especificaciones------------------------------------------------------------------------------------------------------------>>
 {
   frameRate(10);
   smooth();
  fill(0, 60);
rect(0, 0, width, height);
 fill(255,255,255);
 

fill(230);
r = random(3, 8);

x = random(r, width-r);
y = random(r, height-r);
dx = map(noise(3.00+a), 700, 1, 700, 3);
dy = map(noise(4.00+a), 700, 1, 700, 3);
ellipse(x + dx, y + dy, r, r);

a = a + 0.09;
textAlign(CENTER);
 text("En sombras:\n\nThoth es un pequeño gato, aprendiz de la magia oscura. Su proposito sera volverse el mago mas poderoso y \nrespetado de todos, incluso volverse su rey.\nTu decides si ayudarlo en su proposito o derrotarlo",400,200);
 if(key=='q')
   {
     pantalla=1;
   }
 }
 
 
 
//-------------------|------------------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|--|-|-|-------------------------------------------------------------------------|-|-|-|-||-|-|-|-|-|-|-|-| 
 if(pantalla==1)//selección de personajes----------------------------------------------------------------------------------------------------------
 {
   //.creatura(); sirve para llamar a los atributos de tus personajes a tu clase jugador
   //PushMatrx: Apertura para la matriz...Agrupar elementos
   //Pop Matrix es para cerrarla
   frameRate(10);
   smooth();
  fill(#301A48);
rect(0, 0, width, height);
 fill(255,255,255);
 

fill(230);
r = random(3, 8);

x = random(r, width-r);
y = random(r, height-r);
dx = map(noise(3.00+a), 700, 1, 700, 3);
dy = map(noise(4.00+a), 700, 1, 700, 3);
ellipse(x + dx, y + dy, r, r);

a = a + 0.09;
text("Toth\nPresiona A",330,284);
  text("Presiona Z",330,310);
  text("Wizard\nPresiona B",160,284);
  text("Presiona X",160,310);
  
   text("PrincipeGato\nPresiona C",480,284);
  text("Presiona Y",480,310);
   text("Bestia\nPresiona D",275,515);
  text("Presiona V",275,540);
  
   text("Ellipc\nPresiona D",100,500);
  text("Presiona V",100,530);
  
  pushMatrix();
  scale(0.5);
  translate(350,0);
   toth.creatura();
  popMatrix(); 
  
 pushMatrix();
  scale(0.5);
  translate(20,0);
   wizard.creatura();
  popMatrix(); 
  
  pushMatrix();
  scale(0.5);
  translate(650,0);
   principeGato.creatura();
  popMatrix();
  
  pushMatrix();
  scale(0.5);
  translate(250,450);
   bestia.creatura();
  popMatrix();  
  
  pushMatrix();
  scale(0.5);
  translate(00,600);
   ellipc.creatura();
  popMatrix(); 

if(key=='A'||key=='a')
{
  p1=toth; coin1= 0;
  huevitos1=true;
}

if(key=='B'||key=='b')
{
  p1=wizard; coin1=1;
  huevitos1=true;
}
if(key=='C'||key=='c')
{
  p1=principeGato;coin1=2;
  huevitos1=true;
}
if(key=='D'||key=='d')
{
  p1=bestia;coin1=3;
  huevitos1=true;
}
if(key=='E'||key=='e')
{
  p1=ellipc;coin1=4;
  huevitos1=true;
}
 
if(key=='Z'||key=='z')
{
  p2=toth;coin2=0; 
  huevitos2=true;
}
if(key=='X'||key=='x')
{
  p2=wizard;coin2=1;
  huevitos2=true;
}
if(key=='Y'||key=='y')
{
  p2=principeGato; coin2=2;
  huevitos2=true;
}
if(key=='V'||key=='v')
{
  p2=bestia;coin2=3;
  huevitos2=true;
}
if(key=='U'||key=='u')
{
  p2=ellipc; coin2=4;
  huevitos2=true;
 }
 
 
if(huevitos1==true&&huevitos2==true)
{
  pantalla=2;
}
 } 
 
//-------------------|------------------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|--|-|-|-------------------------------------------------------------------------|-|-|-|-||-|-|-|-|-|-|-|-| 
 if(pantalla==2)//a la verga me vale verga prro(referenciaa video de youtube)--------------------------------------------------------------------------
 {
  frameRate(10);
   smooth();
  fill(#1A483D);
rect(0, 0, width, height);
 fill(255,255,255);
 

fill(230);
r = random(3, 8);

x = random(r, width-r);
y = random(r, height-r);
dx = map(noise(3.00+a), 700, 1, 700, 3);
dy = map(noise(4.00+a), 700, 1, 700, 3);
ellipse(x + dx, y + dy, r, r);

a = a + 0.09;
   text("Jugador 1 \nPresiona R",100,500);
  text("Jugador 2 \nPresiona W",600,500);
  
   if(coin1==0)
   {
       pushMatrix();
       scale(0.5);
  translate(0,0);
  toth.creatura();
  popMatrix(); 
   
 }
 
 if(coin1==1)
   {
       pushMatrix();
       scale(0.5);
  translate(0,0);
  wizard.creatura();
  popMatrix(); 
  
   }
 if(coin1==2)
   {
       pushMatrix();
       scale(0.5);
  translate(0,0);
  principeGato.creatura();
  popMatrix(); 
   
   }
 if(coin1==3)
   {
       pushMatrix();
       scale(0.5);
  translate(0,0);
  bestia.creatura();
  popMatrix(); 
  
   }
 if(coin1==4)
   {
  pushMatrix();
  scale(0.5);
  translate(0,100);
  ellipc.creatura();
  popMatrix(); 
   
    }
 if(coin2==0)
   {
  pushMatrix();
  scale(0.5);
  translate(600,0);
  toth.creatura();
  popMatrix(); 
 }
 if(coin2==1)
   {
       pushMatrix();
       scale(0.5);
  translate(600,0);
  wizard.creatura();
  popMatrix();
  
   }
 if(coin2==2)
   {
       pushMatrix();
       scale(0.5);
  translate(600,0);
  principeGato.creatura();
  popMatrix(); 
  
   }
 if(coin2==3)
   {
       pushMatrix();
       scale(0.5);
  translate(700,0);
  bestia.creatura();
  popMatrix();
   }
   if(coin2==4)
   {
       pushMatrix();
       scale(0.5);
  translate(650,100);
  ellipc.creatura();
  popMatrix();
   }
  
  if(turno==1)
   {
  if(key=='r')
  {
     p2.vida-=p1.ataque;
     turno=2;
   } 
  }
 if(turno==2)
 {
  if(key=='w')
  {
    p1.vida-=p2.ataque;
     turno=1;
  }
 }
 if(p1.vida<=0||p2.vida<=1)
 {
   pantalla=3;
 }
 }
//-------------------|------------------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|--|-|-|-------------------------------------------------------------------------|-|-|-|-||-|-|-|-|-|-|-|-|
 if(pantalla==3)//ultima pantalla----------------------------------------------------------------------------------------------------------------------
 {
   background(0);
   text("Fin del juego\npresiona el boton de borrar ",160,284);
  
   if(key==BACKSPACE)
   {
     toth.vida=600;
     wizard.vida=900;
     principeGato.vida=600;
     bestia.vida=500;
     ellipc.vida=550;
     pantalla=0;
     huevitos1=false;
     huevitos2=false;
   }
 }
}