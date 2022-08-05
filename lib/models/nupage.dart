import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class NuPage extends StatelessWidget {
  const NuPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/nu.png'),
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
                    child: Text("សាកលវិទ្យាល័យន័រតុន​ ជាសាកលវិទ្យាល័យឯកជនដំបូងគេនៅប្រទេសកម្ពុជាដែលត្រូវបានបង្កើតឡើងនៅថ្ងៃទី​ ២ ខែធ្នូ ឆ្នាំ ១៩៩៧ ដោយសាស្រា្តចារ្យ ច័ន្ទ សុខឃាង(Chan Sok Khieng)។ ទីតាំង ៖ នៅតាមបណ្តោយផ្លូវកែវចិន្តា ខណ្ឌជ្រោយចង្វា រាជធានីភ្នំពេញ។ សាកលវិទ្យាល័យន័រតុន​ មានមហាវិទ្យាល័យចំនួន​ ៤ ដែលមានមុខជំនាញដូចជា​ : មហាវិទ្យាល័យវិទ្យាល័យសាស្រ្តសុខាភិបាល, មហាវិទ្យាល័យសិល្ប: មនុស្សសាស្រ្ត និង​​ ភាសា, មហាវិទ្យាល័យវិទ្យាសាស្រ្ត,  មហាវិទ្យាល័យវិទ្យាសាស្រ្តសង្គម។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}