import 'package:flutter/material.dart';

class AppForgotPassword extends StatefulWidget {
  const AppForgotPassword({Key? key}) : super(key: key);

  @override
  _AppForgotPasswordState createState() => _AppForgotPasswordState();
}

class _AppForgotPasswordState extends State<AppForgotPassword> {
  TextEditingController resetPasswordController = TextEditingController();
  final resetPasswordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: resetPasswordKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 300,
                  child: Image.asset("assets/png_images/forgot.png"),
                ),
                Text(
                  "Receive an email to reset your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: resetPasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your email address";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: SizedBox(
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        if (resetPasswordKey.currentState!.validate()) {
                          // Your logic to reset the password here
                        }
                      },
                      child: Text("Reset Password"),
                    ),
                  ),
                ),

                ],),
          ),
        ),
      ),
    );
  }
}

