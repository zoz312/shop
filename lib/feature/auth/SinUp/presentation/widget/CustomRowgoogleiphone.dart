import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CustomRowgoogleiphone extends StatelessWidget {
  const CustomRowgoogleiphone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: ()async {
             await signInWithGoogle();
            },
            child: Container(
              width: 154,
              height: 56,
              child: Image.asset(
                'assetes/google.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: 154,
            height: 56,
            child: Image.asset(
              'assetes/iphone.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

Future<UserCredential> signInWithGoogle() async {
 
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
