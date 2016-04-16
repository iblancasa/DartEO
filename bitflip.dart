import "darteo.dart";





void main() {
  int length = 16;
  int iterations = 100000;
  int top_length = 32768;

  while (length<top_length){
    List chromosome = random_chromosome(length);
    print("Dart-BitVector, " +length.toString()+ ", "
        +computeTimeChromosome(chromosome, iterations).toString());
    length *= 2;
  }
}
