// state magement for auth

import 'package:auth_bloc_flutter/feature/auth/domain/entity/app_user.dart';
import 'package:auth_bloc_flutter/feature/auth/domain/repos/auth_repo.dart';
import 'package:auth_bloc_flutter/feature/auth/presentation/cubits/auth_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubits extends Cubit<AuthState> {
  final AuthRepo authRepo;

  AppUser? _currentUser;

  AuthCubits({required this.authRepo}) : super(AuthInitial());
  // auth check
  void checkAuth() async {
    final AppUser? User = await authRepo.getCurrentUser();

    if (User != null) {
      _currentUser = User;
      emit(AuthAuthenticated(User));
    } else {
      emit(AuthUnauthenticated());
    }
  }

  //current user
  AppUser? get currentUser => _currentUser;

  //loginh
  Future<void> login(String email, String password) async {
    try {
      emit(AuthLoading());
      final AppUser? User = await authRepo.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (User != null) {
        _currentUser = User;
        emit(AuthAuthenticated(User));
      } else {
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(AuthUnauthenticated());
    }
  }

  //sign up
  Future<void> register(String email, String password, String name) async {
    try {
      emit(AuthLoading());
      final AppUser? User = await authRepo.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );
      if (User != null) {
        _currentUser = User;
        emit(AuthAuthenticated(User));
      } else {
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(AuthUnauthenticated());
    }
  }

  Future<void> signOut() async {
    authRepo.signOut();
    emit(AuthUnauthenticated());
  }
}
