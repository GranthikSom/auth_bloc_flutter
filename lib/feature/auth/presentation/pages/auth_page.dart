/*


hcsgvhfgds hgved hvdsfc hgvds


*/

import 'package:auth_bloc_flutter/feature/auth/presentation/pages/register_page.dart';
import 'package:auth_bloc_flutter/feature/auth/presentation/pages/signin_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showSigninPage = true;

  void togglePages() {
    setState(() {
      showSigninPage = !showSigninPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSigninPage) {
      return SigninPage();
    } else {
      return RegisterPage();
    }
  }
}
