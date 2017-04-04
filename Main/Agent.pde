class Agent {
  PVector basePoint;
  float offSet;
  pointAgent vertices[];
  Agent target;

  Agent(PVector _basePoint, float _offset) {
    basePoint = _basePoint;
    offSet = _offset;
    init();
  }
  void init() {
    vertices = new pointAgent[3];
    vertices[0] = new pointAgent(basePoint.x, basePoint.y - offSet);
    vertices[1] = new pointAgent(basePoint.x - offSet, basePoint.y + offSet);
    vertices[2] = new pointAgent(basePoint.x + offSet, basePoint.y + offSet);
  }

  void display() {
    for (int i = 0; i < vertices.length; i++) {
      PVector average = new PVector((vertices[0].x + vertices[1].x + vertices[2].x) / 3, (vertices[0].y + vertices[1].y + vertices[2].y) / 3);
      stroke(30,20,55,55);
      line(vertices[i].x, vertices[i].y, average.x, average.y);
    }
  }

  void findTarget(Agent[] array) {
    for (int i = 0; i < vertices.length; i++) {
      vertices[i].findTargetPoint(array);
    }
  }

  void moveToTarget() {
    for (int i = 0; i < vertices.length; i++) {
      vertices[i].moveToTarget();
    }
  }
}