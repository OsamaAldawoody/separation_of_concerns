void main(List<String> arguments) async {
  // final defaultService = DefaultService();
  // final controller = Controller(defaultService);
  // controller.doAction();
  print(await sumStream(countStream(10)));
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (var i = 1; i <= to; i++) {
    print(i);
    yield i;
  }
}
