void main(List<String> args) {
  print("Collections");
  lists();
  sets();
  maps();
}

void lists() {
  var scores = [72, 52, 93, 87, 41, 83];
  print("values: $scores");
  scores[1] = 100;
  print("Index 1: ${scores[1]}");

  final emptyStartingList = <int>[];

  //emhanced for loop
  for (var score in scores) {
    print(score);
  }
}

void sets() {
  final setOfInts = <int>{};
}

void maps() {
  final mapOfInts = <String, int>{};
}
