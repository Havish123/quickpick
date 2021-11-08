import 'package:firebase_auth/firebase_auth.dart';
import 'package:quickpic/model/user.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  user _userFirebase(User user1) {
    print(user1);
    return user1 != null ? user(userid: user1.uid) : null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      var result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;
      print(firebaseUser);
      return _userFirebase(firebaseUser);
    } catch (e) {
      print(e);
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      var results = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = results.user;
      print(firebaseUser);
      return firebaseUser;
      // return _userFirebase(firebaseUser);
    } catch (e) {
      print(e);
    }
  }

  Future resetPassword(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e);
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e);
    }
  }
}
