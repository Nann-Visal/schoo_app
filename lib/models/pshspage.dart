import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class PshsPage extends StatelessWidget {
  const PshsPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/pshs.png'),
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
                    child: Text("សាកលវិទ្យាល័យព្រះសីហនុរាជបានបង្កើតឡើងក្នុងឆ្នាំ២០០៦និងជាស្ថាប័នអប់រំឧត្តមសិក្សាសាធារណៈមិនរកប្រាក់ចំណេញមួយ។ស្ថាប័ននេះមានទីតាំងស្ថិតនៅក្នុងទីក្រុងភ្នំពេញព្រមទាំងមានសាខានៅខេត្តកំពង់ចាមនិងបាត់ដំបង។សាកលវិទ្យាល័យត្រូវបានទទួលស្គាល់ជាផ្លូវការដោយក្រសួងធម្មការនិងសាសនា។ អាសយដ្ឋានទំនាក់ទំនង ផ្លូវលេខ៣៩៣ តិរវិថីព្រះសីុសុវត្ថិ សង្កាត់ជ័យជំនះ ខណ្ឌដូនពេញ ភ្នំពេញ។ ពុទ្ធិកសាកលវិទ្យាល័យព្រះសីហនុរាជមានមហាវិទ្យាល័យចំនួន៤និងមជ្ឈមណ្ឌលស្រាវជ្រាវ១ ដែលមានមុខជំនាញ៖ ពុទ្ធិកមហាវិទ្យាល័យទស្សនវិជ្ជា និងសាសនា, ពុទ្ធិកមហាវិទ្យាល័យវិទ្យាសាស្រ្តអប់រំ និងព័ត៌មានវិទ្យា, ពុទ្ធិកមហាវិទ្យាល័យអក្សរសាស្រ្ត, ពុទ្ធិកមហាវិទ្យាល័យបាលី-សំស្រ្កឹត និងភាសាបរទេស, ពុទ្ធិកមជ្ឍមណ្ឌលគរុកោសល្យ។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}