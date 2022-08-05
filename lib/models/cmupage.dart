import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class CmuPage extends StatelessWidget {
  const CmuPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/cmu.png'),
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
                    child: Text("សាកលវិទ្យាល័យមេគង្គកម្ពុជា (ឡាតាំង: Cambodian Mekong University (CMU)) គឺជាសាកលវិទ្យាល័យឯកជនមួយមានទីតាំងនៅភ្នំពេញ​ ប្រទេសកម្ពុជា។សាកលវិទ្យាល័យត្រូវបាន ចុះបញ្ជីជាគ្រឹះស្ថាន អប់រំឯកជន ជាន់​ខ្ពស់ជាមួយក្រសួងអប់រំយុវជននិងកីឡា។ [១]សាកលវិទ្យាល័យនេះត្រូវ បានបង្កើត ឡើងនៅឆ្នាំ 2003 ។ បច្ចុប្បន្នអធិការបតីគឺលោក Ich Seng បានបញ្ចប់ការសិក្សានៃសាកលវិទ្យាល័យ Southern Cross University និងសាកលវិទ្យាល័យ Adelaide University។ កម្មវិធីសិក្សា : មហាវិទ្យាល័យវិទ្យាសាស្រ្តនិង បច្ចេកវិទ្យា, មហាវិទ្យាល័យគ្រប់គ្រងនិង ទេសចរណ៍, មហាវិទ្យាល័យវិទ្យាសាស្រ្តសង្គម, មហាវិទ្យាល័យនីតិសាស្រ្ត, មហាវិទ្យាល័យសេដ្ឋកិច្ច, មហាវិទ្យាល័យសិល្បៈ,មនុស្សសាស្រ្ត,​ភាសាបរទេស, កម្មវិធីអន្តរជាតិ, កម្មវិធីភាពជាសហគ្រិន, សមាគមបរិញ្ញាប័ត្រ (បរិញ្ញាប័ត្រឆ្ពោះទៅរកការងារ) ",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}