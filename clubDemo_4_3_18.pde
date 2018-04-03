void setup(){
  
  String[] bodyParts = {"Head", "ElbowRight", "ElbowLeft",
  "HandRight", "HandLeft", "KneeRight", "KneeLeft", "FootRight", "FootLeft", "SpineBase", "SpineShoulder"};

}

void draw(){
 
 
}


class Node extends PVector {
  // velocity
  PVector velocity = new PVector();
  float oldX, oldY;
  float updateConstant_Factor = 200;
  float updateConstant_Center = width/2;


  Node(float theX, float theY) {
    x = theX;
    y = theY;
  }

  void update(float newX, float newY){
    oldX = x;
    oldY = y;
    
    float tempX = newX*updateConstant_Factor + updateConstant_Center;
    float tempY = newY*updateConstant_Factor + updateConstant_Center;
  
     x = tempX;
     y = tempY; 
  }
}

class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particle>();
  }
  
  void updateParticleSys(float newPosition1, float newPosition2){
   origin.x = newPosition1;
   origin.y = newPosition2;
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.0);
    velocity = new PVector(random(0, 0), random(0, 5));
    position = l.copy();
    lifespan = 2555.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    stroke(255, lifespan);
    fill(255, lifespan);
    ellipse(position.x, position.y, 3, 3);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}