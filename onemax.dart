import "darteo.dart";


void main() {
  int length = 16;
  int iterations = 100000;
  int top_length = 32768;

  while (length<top_length){
    print("Dart-List, " +length.toString()+ ", "+computeTimeFitness(length, iterations).toString());
    length *= 2;
  }
}
