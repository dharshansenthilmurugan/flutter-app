import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Forgotpassword.dart';
import 'package:flutterapp/screens/signup.dart';

class AppSignInScreen extends StatefulWidget {
  const AppSignInScreen({Key? key}) : super(key: key);

  @override
  State<AppSignInScreen> createState() => _AppSignInScreenState();
}

class _AppSignInScreenState extends State<AppSignInScreen> {
  bool textVisible = true;
  final _signInFormKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController userpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _signInFormKey,
          child: ListView(
            children: [
              SizedBox(
                height: 300,
                child: Image.asset("assets/png_images/signin.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Sign In", style: TextStyle(fontSize: 25.0, color: Colors.blueGrey)),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your username";
                    }
                    return null;
                  },
                  controller: username,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.cyan),
                    hintText: "Enter Your Email Address",
                    prefixIcon: Icon(Icons.person, color: Colors.blueGrey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your password";
                    }
                    return null;
                  },
                  controller: userpass,
                  obscureText: textVisible,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.cyan),
                    hintText: "Enter Your Password",
                    prefixIcon: Icon(Icons.lock, color: Colors.blueGrey),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          textVisible = !textVisible;
                        });
                      },
                      icon: Icon(
                        textVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.blueGrey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    if (_signInFormKey.currentState!.validate()) {
                      // Your login logic here
                    }
                  },
                  child: Text("Login", style: TextStyle(fontSize: 18),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return AppForgotPassword();
                        }));
                      },
                      child: Text("Forgot password?"),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New user? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AppSignUp();
                      }));
                    },
                    child: Text("Sign up now"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
