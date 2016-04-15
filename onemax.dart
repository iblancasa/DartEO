import "darteo.dart";


double calculeTime(int length, int iterations){
  Stopwatch stopwatch = new Stopwatch()..start();
  List chromosome;

  for(int i = 0;i<iterations;i++){
      chromosome = random_chromosome(length);
      compute_fitness(chromosome);
  }
  return stopwatch.elapsedMicroseconds/1000000;
}


void main() {
  int length = 16;
  int iterations = 100000;
  int top_length = 32768;

  while (length<top_length){
    print("Dart-BitVector, " +length.toString()+ ", "+calculeTime(length, iterations).toString());
    length *= 2;
  }
}
