// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flexomatic/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateProvider = Provider<AuthProvider>((ref) => AuthProvider());

class AuthProvider {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseDatabase _database = FirebaseDatabase.instance;

  void signUp(String email, String password, BuildContext context,
      {required String fullName}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      var userInfo = jsonEncode({
        'fullName': fullName,
        'email': userCredential.user?.email.toString()
      });
      _database.ref().child('User').push().set(userInfo);
    } on FirebaseAuthException catch (err) {
      if (err.code == 'weak-password') {
        Utils.toast(context, 'The password provided is too weak.');
      } else if (err.code == 'email-already-in-use') {
        Utils.toast(context, 'The account already exists for that email.');
      }
    } catch (error) {
      print(error);
    }
  }
}
