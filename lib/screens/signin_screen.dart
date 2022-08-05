import 'package:flutter/material.dart';
import 'package:school_app/screens/home_screen.dart';
import 'package:school_app/screens/signup_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.fromLTRB(
              20,
              MediaQuery.of(context).size.height * 0.2,
              20,
              0,
            ),
            child: Column(
              children: <Widget>[
                ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(90), // Image radius
                  child:  logoWidget('asset/images/logo_sigin_screen.png'),
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                reusableTextField(
                  'Enter Your Email',
                  Icons.verified_user_sharp,
                  false,
                  emailTextController,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                reusableTextField(
                  'Enter Your Password',
                  Icons.lock_outline_sharp,
                  false,
                  passwordTextController,
                ),
                const SizedBox(
                  height: 0.0,
                ),
                signInUpButton(
                  context,
                  true,
                  (){
                    FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailTextController.text,
                          password: passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  }).onError((error, stackTrace) {
                    debugPrint("Error ${error.toString()}");
                  });
                }),
                const SizedBox(
                  height: 0.0,
                ),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  const signUpScreen =  SignUpScreen();
                  return signUpScreen;
                }));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Color.fromARGB(255, 4, 72, 229), fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }   
}