class pointAgent {
  float x;
  float y;
  pointAgent target;
  float maxSpeed = random(5);

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
      for (int j = 0; j < array[i].vertices.length; j++) {
        if (currentTarget.x == 5000 && currentTarget.y == 5000) {
          currentTarget = array[i].vertices[j];
        } else if (dist(x, y, array[i].vertices[j].x, array[i].vertices[j].y) < dist(x, y, currentTarget.x, currentTarget.y) && dist(x, y, array[i].vertices[j].x, array[i].vertices[j].y) != 0) {
          currentTarget = array[i].vertices[j];
        }
      }
    }
    target = currentTarget;
  }

  void moveToTarget() {
    PVector v1 = new PVector(x, y);
    PVector v2 = new PVector(target.x, target.y);
    PVector velocity = v2.sub(v1);
    velocity.setMag(maxSpeed);
    x = x + velocity.x;
    y = y + velocity.y;
  }
}