import 'package:auth_bloc_flutter/feature/auth/domain/entity/app_user.dart';

abstract class AuthRepo {
  Future<AppUser> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<AppUser> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<AppUser?> getCurrentUser();

  Future<String> sendPasswordResetEmail({required String email});

  Future<void> updatePassword({
    required String currentPassword,
    required String newPassword,
  });
  Future<void> deleteAccount();
}
