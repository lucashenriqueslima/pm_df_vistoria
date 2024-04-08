import 'package:get/get.dart';

class ProfileController extends GetxController {
  ProfileController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}
