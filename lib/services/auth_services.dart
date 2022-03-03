import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class FirebaseAuthService{
  final FirebaseAuth _firbaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? user = FirebaseAuth.instance.currentUser;
  
  //giriş yap fonksiyonu
  
  Future<User?> signIn(String email, String password) async {
    var user = await _firbaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  //kayıt ol fonksiyonu
  Future<User?> createPerson(
      String email, String password, String userName) async {
    var userCrendential = await _firbaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore.collection("Person").doc(userCrendential.user!.uid).set({
      'email': email,
      'userName': userName,
      'uid': FirebaseAuth.instance.currentUser!.uid
    });

    return userCrendential.user;
  }

  
  signOut() async {
    return await _firbaseAuth.signOut();
  }

  
  // ignore: override_on_non_overriding_member
  sendEmailVerified() async {
    if (user != null && user!.emailVerified) {
      await user?.sendEmailVerification();
    }
  }
}