

float cSize = 50, start;
Node station1 = new Node("1", null, null);
Node station2 = new Node("2", station1, null);
Node station3 = new Node("3", station2, station1);
Node station4 = new Node("4", station3, station2);
Node station5 = new Node("5", station4, station3);
Node station6 = new Node("6", station5, station4);
Node station7 = new Node("7", station6, station5);
Node station8 = new Node("8", station7, station6);
Node station9 = new Node("9", station8, station7);
Node station10 = new Node("10", station9, station8);

void setup() {
  //fullScreen();
  //noCursor();
  size(300, 300);
  /*Node station1 = new Node("Westminster", null, null);
   Node station2 = new Node("Waterloo", station1, null);
   Node station3 = new Node("Trafalgar Square", station1, station2);
   Node station4 = new Node("Canary Wharf", station2, station3);
   Node station5 = new Node("London Bridge", station4, station3);
   Node station6 = new Node("Tottenham Court Road", station5, station4);
   */
}
void draw() {
}


void keyPressed() {
  if (key == 'q') {
    exit();
  }
  if (key == ' ') {
    startSearch();
  }
}

void startSearch() {
  start = millis();
  BreadthFirstSearch bfs = new BreadthFirstSearch(station10, station1);
  if (bfs.compute())
    System.out.println("Path Found!");
  System.out.print(millis() - start + " Milliseconds");
}