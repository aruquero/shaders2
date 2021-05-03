PShader edges;  
PImage img;
boolean enabled = true;
    
void setup() {
  size(1280, 720, P2D);
  img = loadImage("shader2.jpg");      
  edges = loadShader("edgesfrag.glsl","edges.glsl");
}

void draw() {
  if (enabled == true) {
    shader(edges);
    edges.set("resolution",float(width), float(height));
    edges.set("time",float(millis())/float(1000));
    edges.set("vertexId",100);
  }
}
    
void mousePressed() {
  enabled = !enabled;
  if (!enabled == true) {
    resetShader();
  }
}
