import 'package:get/get.dart';

class HomeController extends GetxController{

  RxBool bluetoothActive = false.obs;
  RxBool locationActive = false.obs;

  bluetoothOperation({required bool enableBluetooth}){
    if(enableBluetooth){

    }
    else{

    }
  }

  locationOperation({required bool enableLocation}){
    if(enableLocation){

    }
    else{

    }
  }

}