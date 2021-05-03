PShader ojo, parpadeo;
boolean aux;
boolean aux2;

void setup() {
  size(640, 360, P3D);
  noStroke();
  fill(204);
  ojo = loadShader("fragment_shader.glsl", "vertex_shader.glsl");
  parpadeo = loadShader("edges.glsl");
  ojo.set("fraction", 1.0);
  aux = false;
  aux2 = true;
}

void draw() { 
  if(aux2){
    background(20);
    fill(255);
    textSize(26);
    text("Segunda entrega Shaders", width/2 - 160 , height/2 - 80);
    textSize(14);
    text("Espacio para continuar", width/2 - 80, height/2 - 40);
    text("Click izquierdo para parpadear", width/2 - 100, height/2 - 20);
    text("© Marcos Couros García", 20, height - 20);
  }else{
    printear();
  }
}
void mousePressed() {
  resetShader();
  aux = !aux;
}
void keyPressed(){
  if(key == ' '){
     background(0);
     resetShader();
     aux2 = !aux2;
  }
}

void printear(){
  translate(width/2, height/2);
  pushMatrix();
  rect(70,0,15,300);
  rect(-70,0,15,300);
  rect(180,35,15,80);
  rect(-195,30,15,80);
  popMatrix();
  pushMatrix();
  rotate(30);
  rect(-10,0,15,200);
  popMatrix();
  pushMatrix();
  rotate(-30);
  rect(-10,0,15,200);
  popMatrix();
  if(aux){
    shader(parpadeo);
    sphere(120);
  }else{
    shader(ojo);
    float dirY = (mouseY / float(height) - 0.5) * 2;
    float dirX = (mouseX / float(width) - 0.5) * 2;
    directionalLight(204, 204, 204, -dirX, -dirY, -1);
    sphere(120);
  }
}
