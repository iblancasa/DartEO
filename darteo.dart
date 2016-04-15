import 'dart:math';


var rng = new Random();


List random_chromosome(int length){
  List chromosome=new List(length);
  for(var i=0;i<length;i++){
    chromosome[i]=rng.nextBool();
  }
  return chromosome;
}


int compute_fitness(List chromosome){
  var count = 0;
  for(var i=0;i<chromosome.length;i++){
    if(chromosome[i])
      count++;
  }
  return count;
}


List mutate1(List chromosome){
  List mutie = new List(chromosome.length);

  for(var i=0;i<mutie.length;i++){
    mutie[i]=chromosome[i];
  }

  var mutation_point = rng.nextInt(chromosome.length);
  mutie[mutation_point] = !mutie[mutation_point];
  return mutie;
}


List crossover(List chromosome1, List chromosome2){
  var length = chromosome1.length;
  var xover_point = rng.nextInt(length);
  var scope = 1 + rng.nextInt(length - xover_point);
  print(xover_point);
  print(scope);
  var new_chrom1 =new List(length);
  var new_chrom2 =new List(length);

  for(var i=0;i<xover_point;i++){
    new_chrom1[i]=chromosome1[i];
    new_chrom2[i]=chromosome2[i];
  }

  for(var i=xover_point;i<xover_point+scope;i++){
    new_chrom1[i]=chromosome2[i];
    new_chrom2[i]=chromosome1[i];
  }

  for(var i=xover_point+scope;i<length;i++){
    new_chrom1[i]=chromosome1[i];
    new_chrom2[i]=chromosome2[i];
  }

  List result = new List(2);
  result[0]=new_chrom1;
  result[1]=new_chrom2;
  return result;
}
