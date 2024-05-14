// ignore_for_file: camel_case_types
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:speak_up/crud/users.dart';

class userService {
  //final String _boxName = "userBox";
  //Future<Box<user>> get _box async => await Hive.openBox<user>(_boxName);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('Users');
  Future<Future<DocumentReference<Object?>>> addUser(user addUser) async {
    return users.add({
      'email': addUser.email,
      'username': addUser.username,
      'password': addUser.password,
      'first name': addUser.firstname,
      'middle name': addUser.middlename,
      'last name': addUser.lastname,
      'gender': addUser.gender,
      'Date of Birth': addUser.firstname,
      'address': addUser.address,
    });
  }

  void registerUser(user addUser) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: addUser.email,
        password: addUser.password,
      );

      String uid = userCredential.user?.uid ?? '';

      users.doc(uid).set({
        'email': addUser.email,
        'username': addUser.username,
        'password': addUser.password,
        'first name': addUser.firstname,
        'middle name': addUser.middlename,
        'last name': addUser.lastname,
        'gender': addUser.gender,
        'Date of Birth': addUser.dateofbirth,
        'address': addUser.address,
      });
    } catch (e) {
      print('Error registering user: $e');
    }
  }

  // Future<User?> signUpwithEmailAndPassword(
  //     String email, String password) async {
  //   try {
  //     UserCredential credential = await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     return credential.user;
  //   } catch (e) {
  //     // ignore: avoid_print
  //     print("some error occured");
  //   }
  //   return null;
  // }

  // Future<User?> signInwithEmailAndPassword(
  //     String email, String password) async {
  //   try {
  //     UserCredential credential = await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     return credential.user;
  //   } catch (e) {
  //     print("some error occured");
  //   }

  //   return null;
  // }

  void updateUserData(user updateUser) async {
    try {
      String uid = FirebaseAuth.instance.currentUser?.uid ?? "";

      await FirebaseFirestore.instance.collection('Users').doc(uid).update({
        'first name': updateUser.firstname,
        'middle name': updateUser.middlename,
        'last name': updateUser.lastname,
        'address': updateUser.address,
        'gender': updateUser.gender,
        'Date of Birth': updateUser.dateofbirth,
        'email': updateUser.email,
      });
      print('updated successfully');
    } catch (e) {
      print('Error updating user data: $e');
    }
  }

  Future<void> deleteAccount() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        String uid = user.uid;
        CollectionReference usersCollection =
            FirebaseFirestore.instance.collection('Users');
        await usersCollection.doc(uid).delete();
        await user.delete();
        print('Account and corresponding data deleted successfully');
      } else {
        print('No user signed in');
      }
    } catch (e) {
      print('Error deleting account: $e');
    }
  }
}
