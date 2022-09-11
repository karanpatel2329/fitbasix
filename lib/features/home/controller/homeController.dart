import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController  extends GetxController{
  RxInt waterConsumed = 100.obs;
  RxInt caloriesConsumed = 10.obs;

  void IncrementCaloriesConsumed(){
    print(caloriesConsumed);
    if(caloriesConsumed<=180){
      caloriesConsumed+=10;
    }
  }
  void Decrement(){
    if(waterConsumed>=10)
    waterConsumed.value-=10;
  }
}