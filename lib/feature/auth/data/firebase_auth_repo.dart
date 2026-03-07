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
Future<void> deleteAccount() async {}

@override
Future<AppUser?> getCurrentUser() async {
  final firebaseUser = firebaseAuth.currentUser;

  if (firebaseUser != null) {
    return AppUser(
      id: firebaseUser.uid,
      email: firebaseUser.email!,
      name: 'User',
    );
  } else {
    return null;
  }
}

@override
Future<String> sendPasswordResetEmail({required String email}) {
  // TODO: implement sendPasswordResetEmail
  throw UnimplementedError();
}

@override
Future<void> signOut() async {
  await firebaseAuth.signOut();
}

@override
Future<void> updatePassword({
  required String currentPassword,
  required String newPassword,
}) {
  // TODO: implement updatePassword
  throw UnimplementedError();
}
