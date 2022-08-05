import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class BbuPage extends StatelessWidget {
  const BbuPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/bbu.png'),
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
                    child: Text("សាកលវិទ្យាល័យបៀលប្រាយ​​​​​ ​(BBU University) គឺជាគ្រឹះស្ថានឯកជននៅកម្ពុជា។​ សាកលវិទ្យាល័យចែកចេញជា មហាវិទ្យាល័យវិទ្យសាស្រ្ត និងបច្ចេកវិទ្យា មហាវិទ្យាសាស្រ្តនិងមនុស្ស មហាវិទ្យាល័យគ្រប់គ្រងធុរកិច្ច។ សាកលវិទ្យាល័យបៀលប្រាយមានសាខានៅក្នុងប្រទេសកម្ពុជា។​ មាននៅ៖ សាខាខេត្តបន្ទាយមានជ័យ សាខាខេត្តបាត់ដំបង សាខាខេត្តតាកែវ សាខាខេត្តរតនគីរី សាខាខេត្តព្រះសីហនុ សាខាខេត្តសៀមរាប សាខារាជធានីភ្នំពេញ។ សាកលវិទ្យាល័យបៀលប្រាយ​ មានមហាវិទ្យាល័យចំនួន​ ៨ ដែលមានមុខជំនាញដូចជា​ : មហាវិទ្យាល័យសេដ្ឋកិច្ចនិងវិទ្យាសាស្ត្រកសិកម្ម, មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្ម, មហាវិទ្យាល័យទេសចរណ៍និងបដិសណ្ឋារកិច្ច, មហាវិទ្យាល័យវិទ្យាសាស្ត្រនិងបច្ចេកវិទ្យា, មហាវិទ្យាល័យវិស្វកម្មនិងស្ថាបត្យកម្ម, មហាវិទ្យាល័យសិល្បៈមនុស្សនិងភាសា, មហាវិទ្យាល័យនីតិសាស្រ្តនិងវិទ្យាសាស្ត្រសង្គម, មហាវិទ្យាល័យផ្នែកបណ្ឌិត។ ",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}