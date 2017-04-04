Agent[] agentArray;

void setup () {
  size(1000,1000);
  //PVector basePoint = new PVector (width / 2, height / 2);
  agentArray = new Agent[100];
  for (int i = 0; i < agentArray.length; i++) {
    PVector randPoint = new PVector(random(width), random(height));
    agentArray[i] = new Agent(randPoint, 10);
  }
}

void draw () {
  //background(51);
  //for (Agent a : agentArray) {
  //  a.findTarget(agentArray);
  //  a.moveToTarget();
  //  a.display();
  //}
  for (int i = 0; i < agentArray.length; i++) {
    agentArray[i].findTarget(agentArray);
    agentArray[i].moveToTarget();
    agentArray[i].display();
  }
}