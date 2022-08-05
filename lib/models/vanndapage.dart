import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class VanndaPage extends StatelessWidget {
  const VanndaPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/vannda.png'),
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
                    child: Text("វិទ្យាស្ថានវ៉ាន់ដា​ ជាគ្រឹះស្ថានឧត្ដមសិក្សាឯកជន​ និងជាវិទ្យាស្ថានឯកទេសគណនេយ្យ និងពន្ធដាតែមួយគត់ដែលរៀបចំ កម្មវិធីសិក្សាសម្រាប់និស្សិតទៅធ្វើការងារនៅបណ្ដាក្រុមហ៊ុននានាលើគ្រប់វិស័យ ​។ វិទ្យាស្ថានវ៉ាន់ដាក៏ត្រូវបានបង្កើតឡើងក្នុងឆ្នាំ ១៩៩៧ ដែលមានឈ្មោះថាមជ្ឈមណ្ឌលគណនេយ្យវ៉ាន់ដា។ មជ្ឈមណ្ឌលគណនេយ្យវ៉ាន់ដា ត្រូវបានផ្លាស់ប្ដូរឈ្មោះជាផ្លូវការទៅ ជាវិទ្យាស្ថានវ៉ាន់ដានៅក្នុងឆ្នាំ២០០១ ។ មជ្ឈមណ្ឌលគណនេយ្យវ៉ាន់ដានៅតែបន្តដំណើរការបើទោះបីស្ថិតក្រោមការ គ្រប់គ្រង របស់របស់វិទ្យាស្ថានវ៉ាន់ដា ។ បច្ចប្បន្ននេះវិទ្យាស្ថានវ៉ាន់ដាមានចំនួន២សាខាដែលស្ថិតក្នុងរាជធានីភ្នំពេញ ខេត្តសៀមរាប និងខេត្តបាត់ដំបង។ អាសយដ្ឋានទំនាក់ទំនងរបស់វិទ្យាស្ថានវ៉ាន់ដា មហាវិថីម៉សេទុង សង្កាត់ទំនប់ទឹក ខណ្ឌចំការមន រាជធានីភ្នំពេញ ។ មហាវិទ្យាល័យ និងមុខជំនាញក្នុងវិទ្យាស្ថានវ៉ាន់ដា មហាវិទ្យាល័យគណនេយ្យ, មហាវិទ្យាល័យហិរញ្ញវត្ថុ និងធនាគារ, មហាវិទ្យាល័យភាសាអង់គ្លេសពាណិជ្ជកម្ម។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}