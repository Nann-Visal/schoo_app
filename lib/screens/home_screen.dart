import 'package:flutter/material.dart';
import 'package:school_app/screens/privateschool_screen.dart';
import 'package:school_app/screens/publicschool_screen.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          "School Info",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      const settingScreen =  SettingScreen();
                      return settingScreen;
                    }));
            },
            icon: const Icon(Icons.more_vert,color:Colors.black,),
          ),
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            )),
          child: SingleChildScrollView(
            child: Padding(
             padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
             child: Column(
              children: <Widget>[
                logoWidgetHomeScreen('asset/images/school_logo.png'),
                const SizedBox(
                  height: 270.0,
                ),
                schoolOptionButton(
                  context,
                  true,
                  (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      const schoolPubScreen =  SchoolPublicScreen();
                      return schoolPubScreen;
                    }));
                  }), 
                const SizedBox(
                  height: 0.0,
                ),
                schoolOptionButton(
                  context,
                  false,
                  (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      const schoolPriScreen =  SchoolPrivateScreen();
                      return schoolPriScreen;
                    }));
                  }), 
              ],
            ),
          ))),
    );
  }
}