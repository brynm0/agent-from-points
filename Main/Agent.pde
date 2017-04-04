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
      line(vertices[i].x, vertices[i].y, basePoint.x, basePoint.y);
    }
  }
  
  void findTarget(Agent[] array) {
    for (int i = 0; i < vertices.length; i++) {
      vertices[i].findTargetPoint(array);
    }
  }
  
  void moveToTarget(Agent[] array) {
    for (int i = 0; i < array.length; i++) {
      
    }
  }
}