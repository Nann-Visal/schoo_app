import 'package:flutter/material.dart';
import 'package:school_app/models/cuspage.dart';
import 'package:school_app/models/hrupage.dart';
import 'package:school_app/models/itepage.dart';
import 'package:school_app/models/iupage.dart';
import 'package:school_app/models/mcupage.dart';
import 'package:school_app/models/numpage.dart';
import 'package:school_app/models/pshspage.dart';
import 'package:school_app/models/rupppage.dart';
import 'package:school_app/models/spnvspage.dart';
import 'package:school_app/models/srupage.dart';
import 'package:school_app/models/ubbpage.dart';
import 'package:school_app/models/udsslspage.dart';
import 'package:school_app/models/ukcdart.dart';
import 'package:school_app/models/uktpage.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';


class SchoolPublicScreen extends StatefulWidget {
  const SchoolPublicScreen({Key? key}) : super(key: key);

  @override
  State<SchoolPublicScreen> createState() => _SchoolPublicScreenState();
}

class _SchoolPublicScreenState extends State<SchoolPublicScreen> {

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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RuppPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/rupp.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SruPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/sru.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const UdsslsPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/udssls.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItePage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/ite.png'),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SpnvsPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/spnvs.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const UktPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/ukt.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const McuPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/mcu.png'),
                  ),
                 ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CusPage()));
                 },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/cus.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const UbbPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/ubb.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NumPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/num.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PshsPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/pshs.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const UkcPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/ukc.png'),
                  ),
                 ),
                ),
                InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HruPage()));
                  },
                 child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(98, 35, 35, 33),),
                  child: const Image(image:AssetImage('asset/images/hru.png'),
                  ),
                 ),
                ),
              ],
            ),
      ),
    );
  }
}

