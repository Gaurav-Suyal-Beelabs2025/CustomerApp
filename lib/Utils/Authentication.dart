import 'package:customerapp/Utils/Utills.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication{
  static Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    // TODO: Add auto login logic

    return firebaseApp;
  }


  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    try {
      await Firebase.initializeApp();
    } catch (e) {
      print('Error initializing Firebase: $e');
    }
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
        await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          Utills.showSnackbar("Alert",
              "The account already exists with a different credential",
              context);
        } else if (e.code == 'invalid-credential') {
          Utills.showSnackbar("Alert",
              "Error occurred while accessing credentials. Try again.",
              context);
        }
      } catch (e) {
        Utills.showSnackbar("Alert",
            "Error occurred using Google Sign In. Try again.",
            context);
      }
    }
    return user;
  }
}