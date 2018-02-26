class jugador{
  int ataque;
  int vida;
  
  int gato;
  jugador(int ataque_,int vida_,int gato_)
  {
    ataque=ataque_;
    vida=vida_;
   
    gato=gato_;
  }
  void creatura()
  {
    if(gato==0)
    {
      //toth-------->

  fill(0);
  noStroke();
  strokeWeight(10);
   triangle (300, 350, 200,550,400,550);
   strokeWeight(10);
  ellipse(300, 300, 200, 170); 
   stroke(0);
  strokeWeight(10);
  triangle(325,220,395,300,395, 180);
  triangle(275,220,205,300,200, 180);
  fill(255);
  noStroke();
  ellipse(335,305,40,35);
  ellipse(265,305,40,35);
  fill(120);
  strokeWeight(5);
  strokeJoin(ROUND);
  stroke(120);
  triangle(300,350,310,340,290,340);
    } 
   
   //------wizard--------->
   if(gato==1)
   {
    
  fill(0);
  noStroke();
  strokeWeight(10);
   triangle (300, 350, 200,550,400,550);
 strokeWeight(10);
ellipse(300, 300, 200, 170); 
   stroke(0);
  strokeWeight(10);

  triangle(275,230,205,300,200, 180);
  fill(250);
  noStroke();
  ellipse(355,305,40,35);
  ellipse(240,305,40,35);
  fill(240);
  strokeWeight(5);
  strokeJoin(ROUND);
  stroke(120);
   ellipse(355,305,40,35);
  ellipse(240,305,40,35);
  
  fill(21);
  strokeWeight(5);
  strokeJoin(ROUND);
  stroke(120);
   }
   
   //------principe gato :B----
   if(gato==2)
   {
    
    fill(250);
    noStroke();
     triangle (300, 350, 200,550,400,550);
     strokeWeight(10);
 
 
 

 
  ellipse(300, 300, 200, 170); 

  strokeJoin(ROUND);
  stroke(250);
  strokeWeight(10);
  triangle(325,220,395,300,395, 180);
  triangle(275,220,205,300,200, 180);
  fill(92);
  noStroke();
  ellipse(335,305,40,35);
  ellipse(265,305,40,35);
  fill(255,195,250);
  strokeWeight(5);
  strokeJoin(ROUND);
  stroke(255,195,250);
  triangle(300,350,310,340,290,340);
   }
   //bestia------------------------------>
   if(gato==3)
   {
     
  fill(0);
  noStroke();
  strokeWeight(10);
  triangle (300, 350, 200,550,400,550);
 strokeWeight(10);
 ellipse(300, 300, 200, 170); 
   stroke(0);
  strokeWeight(10);
  triangle(325,285,395,300,395, 180);
  triangle(275,285,205,300,200, 180);
  fill(255);
  noStroke();
  ellipse(355,305,40,35);
  ellipse(240,305,40,35);
  fill(120);
 
  stroke(120);
  triangle(300,350,310,340,290,340);
    }
  if(gato==4)
    {
      ellipse(200,200,200,200);
      
    }
  }
}