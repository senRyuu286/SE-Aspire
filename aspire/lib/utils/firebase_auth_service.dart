import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

class FirebaseAuthService {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //Register new user with email, password, and profile info
  Future<void> registerUser({
    required String email,
    required String fName,
    required String lName,
    required String password,
  }) async {
    try {
      firebase_auth.UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // Get the newly created user's UID
      String uid = userCredential.user!.uid;

      // Save user data to Firestore
      await _firestore.collection('users').doc(uid).set({
        'uid': uid,
        'email': email,
        'fName': fName,
        'lName': lName,
        'password': password,
        'age': 0,
        'progress': 0.0,
        'createdAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw Exception('Registration failed: ${e.message}');
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }

  // Login user and fetch their data form Firestore
  Future<User> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      firebase_auth.UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);

      String uid = userCredential.user!.uid;

      DocumentSnapshot<Map<String, dynamic>> userDoc = await _firestore
          .collection('users')
          .doc(uid)
          .get();

      if (!userDoc.exists) {
        throw Exception('User profile not found');
      }

      Map<String, dynamic> userData = userDoc.data()!;

      User user = User(
        userID: uid.hashCode,
        email: userData['email'] ?? '',
        fName: userData['fName'] ?? '',
        lName: userData['lName'] ?? '',
        password: userData['password'] ?? '',
        age: userData['age'] ?? 0,
        progress: (userData['progress'] ?? 0.0).toDouble(),
      );

      return user;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw Exception(_handleAuthException(e));
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  // Update user data in firestore
  Future<void> updateUserData({
    required String uid,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _firestore.collection('users').doc(uid).update(data);
    } catch (e) {
      throw Exception('Failed to update user data: $e');
    }
  }

  // Get Current Authenticated User UID
  String? getCurrentUserUID() {
    return _auth.currentUser?.uid;
  }

  // Logout user from firebase
  Future<void> logoutUser() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw Exception('Logout failed: $e');
    }
  }

  String _handleAuthException(firebase_auth.FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'No user found with this email';
      case 'wrong-password':
        return 'Incorrect password';
      case 'invalid-email':
        return 'Invalid email format';
      case 'email-already-in-use':
        return 'Email already registered';
      case 'weak-password':
        return 'Password is too weak';
      default:
        return 'Error: ${e.message}';
    }
  }
}
