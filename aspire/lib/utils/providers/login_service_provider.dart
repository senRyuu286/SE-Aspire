import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/user.dart';
import '../firebase_auth_service.dart';

class LoginService {
  final FirebaseAuthService _authService = FirebaseAuthService();

  // Login user - fetvhes from Firebase and returns User
  Future<User> loginUser(String email, String password) async {
    return await _authService.loginUser(
      email: email,
      password: password,
    );
  }

  // logout user
  Future<void> logooutUser () async {
    await _authService.logoutUser();
  }

  Future<void> syncUserToFirebase(User user) {
    String? uid = _authService.getCurrentUserUID();
    if(uid != null) {
      return _authService.updateUserData(
        uid: uid,
        data: {
          'fName': user.fName,
          'lName': user.lName,
          'password': user.password,
          'age': user.age,
          'progress': user.progress,
        },
      );
    } else {
      throw Exception('No authenticated user found');
    }
  }
}

final loginServiceProvider = Provider((ref) => LoginService());