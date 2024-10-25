import 'package:exam/Controller/firebaseController.dart';
import 'package:exam/Screen/signinpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ContactController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign-Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTextField(controller.txtName,'name'),
              buildTextField(controller.txtPassword,'password'),
              buildTextField(controller.txtEmail,'email'),
              buildTextField(controller.txtPhone,'phone'),
              buildTextField(controller.txtConfirmPassword,'password'),

              ElevatedButton(
                  onPressed: () async {
                    await AuthService.authService
                        .createUserWithEmailAndPassword(
                            controller.txtEmail.text,
                            controller.txtPassword.text);
                  },
                  child: const Text(
                    'Sign-Up',
                    style: TextStyle(color: Colors.blue),
                  )),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ));
                },
                child: const Text(
                  "Already have account? Sign-In",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller,String name) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
                controller: controller,
                decoration:  InputDecoration(
                  labelText: name,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
    );
  }
}
