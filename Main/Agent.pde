class Agent {
  PVector basePoint;
  PVector p1, p2, p3, midPoint;
  float offSet;
  float xAvg, yAvg;
  Agent(PVector _basePoint, float _offSet) {
    basePoint = new PVector();
    basePoint = _basePoint;
    offSet = _offSet;
    init();
  }
  void init() {
    p1 = new PVector(basePoint.x - offSet, basePoint.y - offSet);

    p2 = new PVector(basePoint.x, basePoint.y + offSet);

    p3 = new PVector(basePoint.x + offSet, basePoint.y - offSet);
    xAvg = (p1.x + p2.x + p3.x) / 3;
    yAvg = (p1.y + p2.y + p3.y) / 3;
    midPoint = new PVector(xAvg, yAvg);
  }
  
  void display() {
    line(p1.x,p1.y,midPoint.x,midPoint.y);
    line(p2.x,p2.y,midPoint.x,midPoint.y);
    line(p3.x,p3.y,midPoint.x,midPoint.y);
  }
}