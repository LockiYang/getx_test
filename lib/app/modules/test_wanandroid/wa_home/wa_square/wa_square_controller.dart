import 'package:get/get.dart';

class WaSquareController extends GetxController {
  //TODO: Implement WaSquareController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
