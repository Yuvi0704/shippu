// // ignore_for_file: depend_on_referenced_packages, camel_case_types

// //import 'package:firebase_auth/firebase_auth.dart';
// //import 'package:google_sign_in/google_sign_in.dart';


// import 'package:myapp/services/auth_service.dart';



// class AuthService {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   // Sign in with email and password
//   Future<User?> signInWithEmail(String email, String password) async {
//     try {
//       final UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } catch (e) {
//       print('Failed to sign in with email: $e');
//       return null;
//     }
//   }

//   // Register with email and password
//   Future<User?> registerWithEmail(String email, String password) async {
//     try {
//       final UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } catch (e) {
//       print('Failed to register with email: $e');
//       return null;
//     }
//   }

//   // Sign in with Google
//   Future<User?> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       if (googleUser == null) return null;

//       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//       var idToken;
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       final UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
//       return userCredential.user;
//     } catch (e) {
//       print('Failed to sign in with Google: $e');
//       return null;
//     }
//   }

//   // Sign out
//   Future<void> signOut() async {
//     try {
//       await _firebaseAuth.signOut();
//       await _googleSignIn.signOut();
//     } catch (e) {
//       print('Failed to sign out: $e');
//     }
//   }

//   // Get current user
//   User? getCurrentUser() {
//     return _firebaseAuth.currentUser;
//   }
// }

// mixin instance {
// }

// mixin accessToken {
// }

// class GoogleAuthProvider {
//   static credential({required accessToken, required idToken}) {}
// }

// class GoogleSignInAuthentication {
//   var idToken;

//   get accessToken => null;
// }

// class GoogleSignInAccount {
//   get authentication => null;
// }

// class UserCredential {
//   Null get user => null;
// }



// class User {
// }

// class GoogleSignIn {
//   signIn() {}
  
//   signOut() {}
// }

// class FirebaseAuth {

//   User? get currentUser => null;
  
//   signInWithEmailAndPassword({required String email, required String password}) {}
  
//   createUserWithEmailAndPassword({required String email, required String password}) {}
  
//   signInWithCredential(credential) {}
  
//   signOut() {}
// }