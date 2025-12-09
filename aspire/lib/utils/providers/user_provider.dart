import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/user.dart';

class UserNotifier extends Notifier<User?> {
  @override
  User? build() {
    return null;
  }

  // Set user Data (from firbase on login)
  void setUser(User user) {
    state = user;
  }

  // Update Specific user Fields (Local cache - no network)
  void updateUserField(String fieldName, dynamic value) {
    if(state != null) {
      final currentUser = state!;

      final updateUser = User(
        userID: currentUser.userID,
        email: currentUser.email,
        fName: fieldName == 'fName' ? value : currentUser.fName,
        lName: fieldName == 'lName' ? value : currentUser.lName,
        password: fieldName == 'password' ? value: currentUser.password,
        age: fieldName == 'age' ? value : currentUser.age,
        progress: fieldName == 'progress' ? value : currentUser.progress,
      );

      state = updateUser;
    }
  }
  
  // clear use or logout
  void clearUser() {
    state = null;
  }

  // Get current cached user
  User? get currentUser => state;
}

final userProvider = NotifierProvider<UserNotifier, User?> (() => UserNotifier());