import 'package:flutter/material.dart';
import 'package:slang_example/i18n/strings.g.dart';
import 'package:slang_example/views/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(t.views.login.welcome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: userNameController,
                decoration: InputDecoration(
                  labelText: t.views.login.userName,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return t.views.login.userNameRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: t.views.login.password,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return t.views.login.passwordRequired;
                  } else if (value.length < 6) {
                    return t.views.login.passwordInvalid;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => HomeView(
                          userName: userNameController.text,
                        ),
                      ),
                      (route) => false,
                    );
                  }
                },
                child: Text(t.views.login.loginButton),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Implement forgot password
                },
                child: Text(t.views.login.forgotPassword),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
