import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/domain/auth/user.dart';

class AuthServiceImp extends GetxService {
  late User _user;

  User? get user => _user;

  Future<void> sigIn(String token) async {
    _user = User(accessToken: token);
  }
}
