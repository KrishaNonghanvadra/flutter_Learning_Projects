import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<int>{
  @override
  int build() => 0;
  void increment() {
    if(state <= 20){
      state++;
    };
  }
  void incrementbyfive() {
    if (state+5 <= 20) {
      state+=5;
    }
    else{
      state = 20;
    };
  }
  void deincrement() => state--;
  void reset() => state = 0;
  
}

final counterProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);
