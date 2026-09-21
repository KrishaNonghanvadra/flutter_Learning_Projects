import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt count = 0.obs;

  void inc(){
    count.value++;
  }
  void dec(){
    count.value--;
  }
  void reset(){
    count.value = 0;
  }
}