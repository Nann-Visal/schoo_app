import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';


class SruPage extends StatelessWidget {
  const SruPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/sru.png'),
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
                    child: Text("សាកលវិទ្យាល័យស្វាយរៀងបានបង្កើតឡើងនៅក្នុងឆ្នាំ២០០៥។សាកលវិទ្យាល័យនេះជាគ្រឹះស្ថានឧត្តមសិក្សាសាធារណៈមួយដែលផ្តល់ជូននូវកម្មវិធីសិក្សាជាច្រើនដែលស្របតាមតម្រូវការរបស់កម្លាំងពលកម្មក្នុងស្រុកនៅខេត្តស្វាយរៀងក៏ដូចជាព្រះរាជាណាចក្រកម្ពុជាទាំងមូល។រាល់កម្មវិធីនៅក្នុងសាកលវិទ្យាល័យមានគោលបំណងលើកស្ទួយនិស្សិតអោយមានចំណេះដឹងនិងបទពិសោធន៍មួយច្បាស់លាស់ដែលអាចបំរើការងារនាពេលខាងមុខ។​ សាកលវិទ្យាល័យស្វាយរៀងមានមហាវិទ្យាល័យ៥ដែលមានមុខជំនាញ៖ មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្ម, មហាវិទ្យាល័យកសិកម្ម, មហាវិទ្យាល័យវិទ្យាសាស្រ្តនិងបច្ចេកវិទ្យា, មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្រ្តនិងភាសាបរទេស, មហាវិទ្យាល័យសង្គមសាស្រ្ត។ ទីតាំង​ នៅតាមបណ្តោយផ្លូវជាតិលេខ១ ភូមិចំបក់ សង្កាត់ចេក ក្រុងស្វាយរៀង ខេត្តស្វាយរៀង។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}