import 'dart:math';

class Game{
  int answer = 0;
  Game({int? maxRandom=100}){
    var r = Random();
    answer = r.nextInt(100)+1;
  }
  int doGuess(int num){
    if(num>answer){
      print("$num is hight");
      return 0;
    }
    else if(num<answer){
      print("$num is low");
      return 0;
    }
    else{
      print("$num is correct");
      return 1;
    }
  }
}