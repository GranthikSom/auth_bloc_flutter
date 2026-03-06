//
//
//
//
//
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auth_bloc_flutter/feature/auth/domain/entity/app_user.dart';
import 'package:auth_bloc_flutter/feature/auth/domain/repos/auth_repo.dart';

class FirebaseAuthRepo implements AuthRepo {
  //firebase'

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Future<AppUser> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<AppUser> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
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
}
