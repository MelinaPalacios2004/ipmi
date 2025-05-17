//Tp2 Comisión 3 Obra de Arte Electrónico
//Melina C. Palacios Legajo 122828/6

PFont fuente;

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;

int pantalla;

String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;
String texto7;
String texto8;
 /*Como se podia agregar audio si uno queria, me busque un tutorial y le segui el paso a paso para que acompañe mejor la presentación y no quede en silencio :)*/
import ddf.minim.*;

Minim minim;
AudioPlayer musica;

void setup (){

size (640,480);

fuente = loadFont("BookAntiqua-20.vlw");
textFont (fuente);
textAlign (CENTER,CENTER);
textSize (24);

minim = new Minim(this);
musica = minim.loadFile("snowelves.mp3");

/*Acá dejo las cargas de las imagenes*/

img1 = loadImage ("foto1.png");
img2 = loadImage ("foto2.jpg");
img3 = loadImage ("foto3.jpg");
img4 = loadImage ("foto4.jpeg");
img5 = loadImage ("foto5.jpeg");
img6 = loadImage ("foto6.jpeg");
img7 = loadImage ("foto7.jpg");
img8 = loadImage ("foto8.jpg");

/*Acá dejo las cargas de todos los textos que use*/
texto1 = "ENTER PARA INICIAR :D";
texto2 = "Christa Sommerer y Laurent Mignonneau son una pareja\nde artistas de medios digitales e interactivos mezclando\ntecnología, naturaleza y su relación con el público\nson profesores y creadores del departamento de Culturas\n de la Interfaz en la Universidad de Arte y Diseño\nde Linz en Austria desde el 2004";
texto3 = "Ellos son los creadores de la obra elegida ''A-Volve''\ndesarrollada en 1994 en el laboratorio ATR\nUn centro de investigación avanzado centrado en\ntecnólogias y vida artificial\nUbicado en Tokyo, Japón";
texto4 = "En A-Volve, los visitantes podían diseñar a su gusto\ncriaturas virtuales que nacían y se movían\ndentro de un estanque de agua de manera interactiva\ncomportándose como si tuvieran vida propia\nbuscando tanto nadar como el sobrevivir entre ellos.";
texto5 = "Esta obra fue muy innovadora en cuanto al arte,\nbiología simulada y participación del público más allá\nde ser solamente espectadores sin más,\nya que su nombre es un juego de palabras entre\nla A de arte y Volve de Evolve osea evolucionar\nsignificando Arte Evolutivo, buscando esa\nconexión entre público y obra.";
texto6 = "Estas criaturas creadas por el público visitante\neran formas orgánicas personalizadas nacidas de\nla pura creatividad pudiendo ver desde algunos\npeces y/o renacuajos adaptados para\nnadar y sobrevivir el mayor tiempo posible mientras\nel público observa el comportamiento.";
texto7 = "A-Volve utilizaba un modelo avanzado de evolución\ny comportamiento artificial utilizando una pantalla táctil\npara el proceso de crear, para luego interactar con\nlos peces en el estanque con un poco de agua en\nsu interior para lograr que sea más inversiva.";
texto8 = "REINICIAR";

pantalla = 1;

}

/*Acá es para apretar el enter e iniciar la presentación :)*/


void keyPressed () {
  if (pantalla == 1 && keyCode == ENTER){
    frameCount = 2;
    pantalla = 2;
 }
}

void draw (){

fill (255);
println(frameCount);
println (mouseX + "/" + mouseY);
if (pantalla >= 2 && !musica.isPlaying()) {
  musica.play();
}

/*Acá estan las pantallas por orden de aparición*/

 if(pantalla==1){
    image(img1, 0, 0, 640, 480);
    fill (#FFF9ED);
    text (texto1, width/2, height/2);


}

if(pantalla==2){
  image(img2,0,0,640,480);
  if(musica.isPlaying()){
   musica.play(); 
  }
    fill (0,0,230);
    text(texto2,320,0-frameCount/-0.8);
    if (frameCount/50>3){
      frameCount=0;
      pantalla=3;
 }
}

if(pantalla==3){
    image(img3,0,0,640,480);
    fill(240);
    text(texto3,320,0-frameCount/-0.8);
    if (frameCount/50>=4){
      frameCount=0;
      pantalla=4;
 }
}

if(pantalla==4){
    image(img4,0,0,640,480);
    fill (230,0,0);
    text(texto4,320,0-frameCount/-0.6);
    if (frameCount/50>=2.8){
      frameCount=0;
      pantalla=5;
 }
}

if(pantalla==5){
    image(img5,0,0,640,480);
    text(texto5,320,0-frameCount/-0.5);
    if (frameCount/50>=3){
      frameCount=0;
      pantalla=6;
 }
}

if(pantalla==6){
    image(img6,0,0,640,480);
    fill(0,0,230);
    text(texto6,320,0-frameCount/-0.5);
    if (frameCount/50>=3){
      frameCount=0;
      pantalla=7;
 }
}

if(pantalla==7){
    image(img7,0,0,640,480);
    text(texto7,320,0-frameCount/-0.5);
    if (frameCount/50>=3){
      frameCount=0;
      pantalla=8;
 }
}

if (pantalla==8) {
textSize (32);
image (img8,0,0, 640, 480);
text (texto8, width/2, height/2);
if (frameCount/50>=7) {
  frameCount=0;
  }
 }
}

/*El lugar para apretar y reiniciar la presentación :)*/

void mousePressed (){
if (pantalla == 8 && mouseX>=232 && mouseX<=406 && mouseY>=226 && mouseY<=252){
frameCount = 1;
pantalla = 1;
 }
}
