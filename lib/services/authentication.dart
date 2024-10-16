import 'package:cloud_firestore/cloud_firestore.dart';
// importing firebase auth
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // for storing data in cloud firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // for authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

// for signup
  Future<String> signUpUser(
      {required String email,
      required String password,
      required String name}) async {
    String res = "Some error occurred";
    try {
      // Corrected method name
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      //for adding users to your cloud firestore
      await _firestore.collection("users").doc(credential.user!.uid).set({
        "name": name,
        "email": email,
        "uid": credential.user!.uid,

        //we cannot invoke user password in our cloud firestore
      });
      res = "success";
      // You can add further logic here, such as saving user data to Firestore
    } catch (e) {
      print(e.toString());
    }
    return res;
  }
}
//above is the complete signup auth

