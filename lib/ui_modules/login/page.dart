import 'package:auto_route_test/data/app_state.dart';
import 'package:auto_route_test/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Login'),
              const SizedBox(height: 16),
              CustomButton(title: 'Login', onPressed: () {
                appState.login();
              })
            ]
          ),
        ));
  }
}
