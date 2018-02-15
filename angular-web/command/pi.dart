import 'dart:async';
import 'dart:math' show Random;


main() async {
  print('Compute π using the Monte Carlo method.');

  await for (var estimate in computePi().take(500)) {
    print('π ≅ $estimate');
  };

  final Prueba<int> p = new Prueba(5);
  p.forEach((int i) => {
    print('Funcion anonima.'):
    print('Funcion anonima $i')
  }).mensaje();
}




/// Generates a stream of increasingly accurate estimates of π.
Stream<double> computePi({int batch: 100000}) async* {
  var total = 0;
  var count = 0;
  while (true) {
    var points = generateRandom().take(batch);
    var inside = points.where((p) => p.isInsideUnitCircle);
    total += batch;
    count += inside.length;
    var ratio = count / total;
    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int seed]) sync* {
  final random = new Random(seed);
  while (true) {
    yield new Point(random.nextDouble(), random.nextDouble());
  }
}

class Point {
  final double x, y;
  const Point(this.x, this.y);
  bool get isInsideUnitCircle => x * x + y * y <= 1;
}

@despreseate
class Prueba<E>  {

  int length;

  Prueba(int n) {
    this.length = n;
  }

  Prueba forEach(void action(E element)) {
    int length = this.length;
    
    for (int i = 0; i < length; i++) {
      action(i);
      if (length != this.length) {
        throw new ConcurrentModificationError(this);
      }
    }

    return this;
  }

  Prueba mensaje() {
    print('Mensaje union.');
    return this;
  }
}