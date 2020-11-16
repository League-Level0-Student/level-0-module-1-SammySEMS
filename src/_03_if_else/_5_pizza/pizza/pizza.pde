    PImage pepperoni;
    PImage pizzaBox;
    PImage mushroom;
void setup() {
    size(500, 500);
    fill(224,184,104);
    ellipse(250,250,450,450);
    fill(222, 85, 101);
    ellipse(250,250,400,400);
    fill(230, 240,99);
    ellipse(250,250,370,370);
mushroom = loadImage("mushroom.png");
    pepperoni = loadImage("pepperoni.png");
    image(pepperoni,100,200);
    image(pepperoni,200,100);
      image(pepperoni,300,160);
        image(pepperoni,200,320);
          image(pepperoni,200,200);
              image(pepperoni,300,270);
}

void draw() {
    if (mousePressed && (mouseButton == RIGHT)) 
{image(mushroom,mouseX, mouseY);}
}
