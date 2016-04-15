import "darteo.dart";


double calculeTime(List chromosome, int iterations){
  Stopwatch stopwatch = new Stopwatch()..start();

  for(int i = 0;i<iterations;i++){
      mutate1(chromosome);
  }
  return stopwatch.elapsedMicroseconds/1000000;
}


void main() {
  int length = 16;
  int iterations = 100000;
  int top_length = 32768;

  while (length<top_length){
    List chromosome = random_chromosome(length);
    print("Dart-BitVector, " +length.toString()+ ", "+calculeTime(chromosome, iterations).toString());
    length *= 2;
  }
}
