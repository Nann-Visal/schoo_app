import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class UktPage extends StatelessWidget {
  const UktPage({Key? key}) : super(key: key);

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
             padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
             child: Column(
              children: <Widget>[
                ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(90), // Image radius
                  child:  logoWidgetPublicSchoolScreen('asset/images/ukt.png'),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(125, 158, 158, 158),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text("សាកលវិទ្យាល័យក្រចេះជាគ្រឹះស្ថានឧត្តមសិក្សាសាធារណៈដែលមានទីតាំងនៅក្រុងក្រចេះខេត្តក្រចេះ។ស្ថាប័ននេះត្រូវបានទទួលស្គាល់ជាផ្លូវការដោយក្រសួងអប់រំយុវជននិងកីឡានៃប្រទេសកម្ពុជា។លើសពីនេះទៅទៀតស្ថាប័ននេះមានផ្តល់ជូននូវសញ្ញាបត្រឧត្តមសិក្សានៅក្នុងវិស័យជាច្រើនដែលកំពុងពេញនិយមនិងសម្រាប់យកទៅប្រើប្រាស់នាពេលអនាគត។ ស្ថិតនៅផ្លូវជាតិលេខ៧ ភូមិស្រែស្តៅ សង្កាត់អូរឬស្សី ក្រុងក្រចេះ ខេត្តក្រចេះ។ សាកលវិទ្យាល័យក្រចេះមានមហាវិទ្យាល័យចំនួន៥និងវិទ្យាស្ថានចំនួន៣ដែលមានមុខជំនាញ៖ មហាវិទ្យាល័យវិទ្យាសាស្រ្តកសិកម្ម, មហាវិទ្យាល័យវិទ្យាសាស្រ្តសត្វ និងបសុពេទ្យ, មហាវិទ្យាល័យកសិ-ឧស្សាហកម្ម, មហាវិទ្យាល័យវិស្វកម្ម, មហាវិទ្យាល័យគ្រប់គ្រងអាជីវកម្ម,  វិទ្យាស្ថានមច្ឆវិទ្យា, វិទ្យាស្ថានបច្ចេកវិទ្យាទំនាក់ទំនងព័ត៌មានវិទ្យា, វិទ្យាស្ថានភាសា។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}