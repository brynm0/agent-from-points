class pointAgent {
  float x;
  float y;
  pointAgent target;
  float maxVelocity = 1;

  pointAgent(float _x, float _y) {
    x = _x;
    y = _y;
    target = new pointAgent();
  }
  pointAgent() {
    x = 5000;
    y = 5000;
  }

  void findTargetPoint(Agent[] array) {
    pointAgent currentTarget = new pointAgent();
    for (int i = 0; i < array.length; i++) {
      for (int j = 0; j < array[i].vertices.length; i++) {
        if (dist(x, y, array[i].vertices[j].x, array[i].vertices[j].y) < dist(x, y, currentTarget.x, currentTarget.y)) {
          currentTarget = array[i].vertices[j];
        }
      }
    }
  }
  
  void moveToTarget() {
    PVector v1 = new PVector(x,y);
    PVector v2 = new PVector(target.x,target.y);
    float angle = PVector.angleBetween(v1, v2);
    PVector velocity = PVector.fromAngle(angle);
    x = x + velocity.x;
    y = y + velocity.y;
  }
}