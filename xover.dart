import "darteo.dart";


double calculeTime(List chromosome1, List chromosome2, int iterations){
  Stopwatch stopwatch = new Stopwatch()..start();

  for(int i = 0;i<iterations;i++){
      crossover(chromosome1,chromosome2);
  }
  return stopwatch.elapsedMicroseconds/1000000;
}


void main() {
  int length = 16;
  int iterations = 100000;
  int top_length = 32768;

  while (length<top_length){
    List chromosome1 = random_chromosome(length);
    List chromosome2 = random_chromosome(length);
    print("Dart-BitVector, " +length.toString()+ ", "+calculeTime(chromosome1, chromosome2, iterations).toString());
    length *= 2;
  }
}
