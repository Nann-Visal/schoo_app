import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class WuPage extends StatelessWidget {
  const WuPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/wu.png'),
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
                    child: Text("សាកលវិទ្យាល័យ វេស្ទើន (Western University) គឺគ្រឹះស្ថានឧត្ដមសិក្សាឯកជនដែលបង្កើតឡើងក្នុងឆ្នាំ២០០៣។សាកលវិទ្យាល័យនេះធ្វើឡើងក្នុងគោលបំណងដើម្បីផ្តល់អនាគតដ៏ល្អប្រសើរដល់នស្សិតសាស្រ្តាចារ្យបុគ្គលិកនិងប្រជាជនដោយផ្តោតលើគុណភាពអប់រំនិងគុណធម៌ជាចម្បងផ្សារភ្ជាប់អត្តសញ្ញាណនិងមនសិការជាតិ។ អាសយដ្ឋានទំនាក់ទំនងរបស់ សាកលវិទ្យាល័យ វេស្ទើន ទីតាំងទី ១ ៖ អាគារលេខ ១៤៥ ផ្លូវលេខ​ ៦០៨ កែងផ្លូវ ៣១៣ សង្កាត់បេឹងកក់ ២ ខណ្ឌទួលគោក រាជធានីភ្នំពេញ , ទីតាំងទី ២ ៖ អាគារលេខ ៤៧ ផ្លូវលេខ​១៧៣ សង្កាត់ទួលស្វាយព្រៃ ១ ខណ្ឌចំការមន រាជធានីភ្នំពេញ។ សាកលវិទ្យាល័យ វេស្ទើន មានមហាវិទ្យាល័យចំនួន ៤ ដែលធ្វើការបណ្ដុះ បណ្ដាលលើមុខជំនាញដូចជា ៖ មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្រ្ត និងភាសា, មហាវិទ្យាល័យវិទ្យាសាស្រ្តសង្គម, មហាវិទ្យាល័យគ្រប់គ្រង និងសណ្ឋាគារ ទេសចរណ៍, មហាវិទ្យាល័យវិទ្យាសាស្រ្ត និងបច្ចេកវិទ្យា។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}