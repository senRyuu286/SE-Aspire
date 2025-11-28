
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/register.dart';

class RegisterNotifier extends Notifier<Register> {
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
}

final registerNotifierProvider = NotifierProvider<RegisterNotifier, Register>(() {
  return RegisterNotifier();
});