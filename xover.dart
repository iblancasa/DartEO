import "darteo.dart";


void main() {
  int length = 16;
  int iterations = 100000;
  int top_length = 32768;

  while (length<top_length){
    List chromosome1 = random_chromosome(length);
    List chromosome2 = random_chromosome(length);
    print("Dart-BitVector, " +length.toString()+ ", "+computeTime2Chromosomes(chromosome1, chromosome2, iterations).toString());
    length *= 2;
  }
}
