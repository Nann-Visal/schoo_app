
import 'package:flutter/material.dart';


Image logoWidget(String imageName){
    return Image.asset(
      imageName,
      fit: BoxFit.cover,
      width: 1000.0,
      height: 1000.0,
    );
  }
Image logoWidgetHomeScreen(String imageName){
    return Image.asset(
      imageName,
      fit: BoxFit.cover,
      width: 200.0,
      height: 200.0,
    );
  }
Image logoWidgetPublicSchoolScreen(String imageName){
    return Image.asset(
      imageName,
      fit: BoxFit.cover,
      width: 150.0,
      height: 150.0,
    );
  }
TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
      return TextField(
        controller: controller,
        obscureText: isPasswordType,
        enableSuggestions: !isPasswordType,
        autocorrect: !isPasswordType,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white.withOpacity(0.5)),
        decoration: InputDecoration(
         prefixIcon: Icon(
          icon,
          color: Colors.white70,
         ),
         labelText: text,
         labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
         filled: true,
         floatingLabelBehavior: FloatingLabelBehavior.never,
         fillColor: Colors.white.withOpacity(0.2),
         border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
        ),
        keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
      );
   }

Container signInUpButton(BuildContext context,bool isLoading, Function onTap) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(35, 0, 0, 0);
            }
            return const Color.fromARGB(139, 255, 255, 255);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
          child: Text(
            isLoading?'Log In':'Sign Up',
            style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
          ),
      ),
    );
  }

  Container schoolOptionButton(BuildContext context,bool isLoading, Function onTap) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(10, 0, 0, 0);
            }
            return const Color.fromARGB(139, 255, 255, 255);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)))),
          child: Text(
            isLoading?'សាកល​វីទ្យាល័យរដ្ឋ':'សាកលវិទ្យាល័យឯកជន',
            style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 25),
          ),
      ),
    );
  }
  Container signOutOptionButton(BuildContext context,bool isLoading, Function onTap) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(10, 0, 0, 0);
            }
            return const Color.fromARGB(106, 5, 5, 5);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)))),
          child: const Text(
            'sign out',
            style: TextStyle(
            color: Color.fromARGB(251, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 25),
          ),
      ),
    );
  }