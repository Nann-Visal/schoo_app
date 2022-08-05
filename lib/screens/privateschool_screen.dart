import 'package:flutter/material.dart';
import 'package:school_app/models/bbupage.dart';
import 'package:school_app/models/cicipage.dart';
import 'package:school_app/models/cmupage.dart';
import 'package:school_app/models/cuppage.dart';
import 'package:school_app/models/iupage.dart';
import 'package:school_app/models/kutnpage.dart';
import 'package:school_app/models/nibpage.dart';
import 'package:school_app/models/nupage.dart';
import 'package:school_app/models/setecpage.dart';
import 'package:school_app/models/ucpage.dart';
import 'package:school_app/models/vanndapage.dart';
import 'package:school_app/models/wupage.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';


class SchoolPrivateScreen extends StatefulWidget {
  const SchoolPrivateScreen({Key? key}) : super(key: key);

  @override
  State<SchoolPrivateScreen> createState() => _SchoolPrivateScreenState();
}

class _SchoolPrivateScreenState extends State<SchoolPrivateScreen> {
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
        child: GridView(
              padding: const EdgeInsets.fromLTRB(10.0, 100, 10.0, 10.0),
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const WuPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/wu.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const UcPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/uc.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CmuPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/cmu.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CupPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/cup.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CiciPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/cici.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NibPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/nib.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const BbuPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/bbu.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const KutnPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/kutn.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const VanndaPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/vannda.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const IuPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/iu.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SetecPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/setec.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NuPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/nu.png'),
                  ),
                 ),
                ),
              ],
            ),
      ),
    );
  }
}