
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/register.dart';
import '../../utils/firebase_auth_service.dart';

class RegisterNotifier extends Notifier<Register> {
  final _authService = FirebaseAuthService();

  @override
  Register build() {
    return const Register(
      email: '', 
      fName: '', 
      lName: '', 
      password: '', 
    );
  }

  void setRegisterInfo(Register registerInfo) {
    state = registerInfo;
  }

  Future<void> registerUserInfirebase(Register registerInfo) async {
    try {
      await _authService.registerUser(
        email: registerInfo.email,
        password: registerInfo.password,
        fName: registerInfo.fName,
        lName: registerInfo.lName,
      );

      //Reset state after successful registration
      state = const Register(email: '', fName: '', lName: '', password: '');

    }catch (e) {
      rethrow;
    }
  }
}

final registerNotifierProvider = NotifierProvider<RegisterNotifier, Register>(() {
  return RegisterNotifier();
});