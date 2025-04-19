PImage img;
//////////////////////////////////////////////////////////////////////////////////////////
void setup() {
  size (800, 400);

  background (112, 80, 70);
  
  img = loadImage("Melinapalacios1.jpg");
  
  
}
//////////////////////////////////////////////////////////////////////////////////////////
void draw () {
 
 image (img, 0,0);
 
  println ("X");
  println (mouseX);
  println ("Y");
  println (mouseY);
/////////////////////////////////////////////////////////////////////////////////////////
/*Fondo de madera*/
// Sé que no era necesario hacer el fondo, pero queria probar :D
noStroke();
fill(80, 52, 45);
quad (400,0,423,0,426,400,400,400);

noStroke();
fill(100, 70, 58);
quad (423,0,498,0,498,400,423,400);

noStroke();
fill(80, 52, 45);
quad(451,0,453,0,492,400,451,400);

strokeWeight (7);
stroke (80, 52, 45);
line (480,0,480,400);

noStroke();
fill (100, 70, 58);
quad(530,0,580,0,580,400,530,400);

noStroke();
fill (103, 68, 66);
quad(580,0,613,0,613,60,580,60);

strokeWeight(8);
stroke(95, 66, 59);
line (660,0,660,400);

noStroke ();
fill(120, 93, 88);
quad(712,0,800,0,800,400,712,400);

strokeWeight(12);
stroke(95, 66, 59);
line (712,0,712,400);

strokeWeight(8);
stroke(95, 66, 59);
line (741,0,741,400);

strokeWeight (6);
stroke (95,66,59);
line (780,0,780,400);


/*Sombra de picaporte*/
strokeWeight (1);
fill (59, 49, 52);
quad (400,6,412,7,408,118,400,118);

/*Picaporte*/
strokeWeight (1);
  stroke (68, 67, 70);
  fill (142, 150, 160);
  quad (400, 0, 408, 0, 406, 100, 400, 101);

/*Cuello*/
noStroke ();
fill (189, 173, 173);
rect (554,206,85,70);
  
/*Resto de pelo*/
fill (24,28,28);
rect (501,121,60,210,50);
rect (638,162,60,230,50);
  
/*Cabeza*/   
 noStroke ();
  fill (220, 205, 205);
  ellipse (602,140,140,190);
  
 
/*Cara*/
/*Ojos*/
fill(0);
stroke(0);
circle (566,114,22);
circle (644,118,22);
fill (255);
noStroke();
circle (564,110,11);
circle (641,114,11);


/*Boca*/
noFill();
stroke (148, 119, 131);

strokeWeight (3);
curve (591,100,  574,182,  637,184,  609,100);
line (576,179,571,186);
line (636,181,640,188);


/*Cejas*/
stroke (24, 28, 28);
strokeWeight (6);
line (585,88,558,90);
line (633,90,645,92);


/*Anteojos*/
noFill ();
strokeWeight (1);
stroke(24, 28, 31);
ellipse (568,117,58,56);
ellipse (650,120,58,56);
strokeWeight (2);
curve(606,115,598,113,622,112,612,120);

/*Flequillo*/
stroke (24, 28, 28);
strokeWeight (28);
curve (503,120,   596,40,  512,130,  520,43);
curve (682,223,   596,40,  512,130,  689,150);
curve (442,192,   609,40,  683,197,  469,193);

/*Nariz*/
noStroke();
fill (218, 190, 190);
circle (608,154,20);
quad (607,120,  612,120,  617,150,  601,150);

/*Cuerpo*/
noStroke ();
fill (13, 20, 24);
rect (540,243,120,50,18);
rect (430,286,330,250,74);

noStroke ();
fill (46, 134, 137);
rect (497,367,214,100);


stroke (231, 246, 251);
strokeWeight (14);
line (500,366,708,360);

/*Mano*/
noStroke();
fill (189, 173, 173);
triangle (442,342,  508,341,  487,400);

noStroke();
fill(209, 193, 190);
quad(443,351, 436,293, 502,262,  511,346);

fill(3,2,4);
triangle (511,342, 490,381, 522,400);

fill(3, 2, 4);
triangle (442,349, 438,400,  522,400);
/*Dedos*/
stroke (209, 193, 190);
strokeWeight(15);
line (494,277,511,211);
line(477,276,463,204);

stroke (232,214,211);
line (458,278,474,314);
line (440,284,457,309);
strokeWeight(17);
line (484,299,504,325);
}
