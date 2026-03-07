//
//
//
//
//

//firebase'

import 'package:auth_bloc_flutter/feature/auth/domain/entity/app_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
@override
// ignore: body_might_complete_normally_nullable
Future<AppUser> signInWithEmailAndPassword(
  String email,
  String password,
) async {
  try {
    UserCredential userCredential = await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password);

    AppUser appUser = AppUser(
      id: userCredential.user!.uid,
      email: email,
      name: 'User',
    );

    return appUser;
  } catch (e) {
    throw Exception('Failed to sign in: $e');
  }
}

@override
Future<AppUser> signUpWithEmailAndPassword({
  required String email,
  required String password,
  required String name,
}) async {
  try {
    UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);

    AppUser appUser = AppUser(
      id: userCredential.user!.uid,
      email: email,
      name: name,
    );

    return appUser;
  } catch (e) {
    throw Exception('Failed to sign up: $e');
  }
}

@override
Future<void> deleteAccount() {
  // TODO: implement deleteAccount
  throw UnimplementedError();
}

@override
Future<AppUser?> getCurrentUser() {
  // TODO: implement getCurrentUser
  throw UnimplementedError();
}

@override
Future<String> sendPasswordResetEmail({required String email}) {
  // TODO: implement sendPasswordResetEmail
  throw UnimplementedError();
}

@override
Future<void> signOut() {
  // TODO: implement signOut
  throw UnimplementedError();
}

@override
Future<void> updatePassword({
  required String currentPassword,
  required String newPassword,
}) {
  // TODO: implement updatePassword
  throw UnimplementedError();
}
