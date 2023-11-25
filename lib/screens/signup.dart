import 'package:flutter/material.dart';
import 'package:flutterapp/screens/signin.dart';

class AppSignUp extends StatefulWidget {
  const AppSignUp({Key? key}) : super(key: key);

  @override
  State<AppSignUp> createState() => _AppSignUpState();
}

class _AppSignUpState extends State<AppSignUp> {
  TextEditingController username = TextEditingController();
  TextEditingController usermobile = TextEditingController();
  TextEditingController userpass = TextEditingController();
  TextEditingController userconfirm = TextEditingController();
  final _appSignUpKey = GlobalKey<FormState>();
  bool passtext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.deepPurple),
      ),
      body: SafeArea(
        child: Form(
          key: _appSignUpKey,
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: Image.asset("assets/png_images/signup.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: username,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your email address";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "username",
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  controller: usermobile,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your 10 digit mobile number";
                    }
                    if (value.length != 10) {
                      return "Mobile number must be 10 digits long";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "mobile",
                    labelText: "Mobile",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: TextFormField(
                  obscureText: !passtext,
                  keyboardType: TextInputType.text,
                  maxLength: 6,
                  controller: userpass,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your 6 digit password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passtext = !passtext;
                        });
                      },
                      icon: Icon(passtext ? Icons.visibility : Icons.visibility_off),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  maxLength: 6,
                  obscureText: !passtext,
                  controller: userconfirm,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Confirm your password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passtext = !passtext;
                        });
                      },
                      icon: Icon(passtext ? Icons.visibility : Icons.visibility_off),
                    ),
                    hintText: "confirm password",
                    labelText: "Confirm Password",
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
                    onPressed: () {
                      if (_appSignUpKey.currentState!.validate()) {
                        // Your signup logic here
                      }
                    },
                    child: Text("Sign Up"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AppSignInScreen();
                      }));
                    },
                    child: Text("Sign in now"),
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
