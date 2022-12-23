import 'dart:io';
import 'game.dart';

void main(){
  var game  = Game();
  int result = 0;
  var mycount = <int>[];

  while(true){
    int count = 0;
    var game = Game();
    do{
      stdout.write("Please guess the number between 1 and 100 : ");
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if(guess == null){
        continue;
      }
      else{
        count++;
      }
      result = game.doGuess(guess);
    }
    while(result != 1);
    mycount.add(count);


    if(result ==1){
      stdout.write('total guesses ${count}');
      break;
    }
  }
}
