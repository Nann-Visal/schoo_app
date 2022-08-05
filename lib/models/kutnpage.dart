import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class KutnPage extends StatelessWidget {
  const KutnPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/kutn.png'),
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
                    child: Text("សាកលវិទ្យាល័យខ្មែរបច្ចេកវិទ្យានិងគ្រប់គ្រង ជាគ្រឹះស្ថានឧត្ដមសិក្សាឯកជនដែលបានបង្កើតឡើងក្នុងឆ្នាំ ២០០៨ ហើយត្រូវបានទទួលស្គាល់ដោយក្រសួងអប់រំយុវជននិងកីឡាកម្ពុជា ។សាកលវិទ្យាល័យខ្មែរបច្ចេកវិទ្យានិងគ្រប់គ្រងជាគ្រឹះស្ថាន ឧត្តមសិក្សាប្រកបដោយការអប់រំព្រមទាំងផ្តល់នូវវគ្គសិក្សា និងកម្មវិធីដែលនាំឱ្យមានការទទួលស្គាល់ជាផ្លូវការនូវសញ្ញាបត្រឧត្តម សិក្សានៅក្នុងវិស័យជាច្រើននៃការសិក្សា។ អាសយដ្ឋានទំនាក់ទំនងរបស់សាកលវិទ្យាល័យខ្មែរបច្ចេកវិទ្យា និងគ្រប់គ្រង ផ្លូវឯករាជ្យ ភូមិ ២ សង្កាត់ ៣ ខណ្ឌមិត្តភាព ក្រុងព្រះសីហនុ ខេត្តព្រះសីហនុ ។ សាកលវិទ្យាល័យខ្មែរបច្ចេកវិទ្យានិងគ្រប់គ្រង មានមហាវិទ្យាល័យចំនួន ៦ និងវិទ្យាស្ថានចំនួន ១ ដែលមានមុខជំនាញ៖ មហាវិទ្យាល័យវិទ្យាសាស្រ្ត និងបច្ចេកវិទ្យា, មហាវិទ្យាល័យវិទ្យាសាស្រ្តកសិកម្ម និងអភិវឌ្ឍន៍ជនបទ, មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្រ្ត និងភាសា, មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្ម និងទេសចរណ៍, មហាវិទ្យាល័យនីតិសាស្រ្ត និងវិទ្យាសាស្រ្តសង្គម, មហាវិទ្យាល័គ្រប់គ្រងពាណិជ្ជកម្ម។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}