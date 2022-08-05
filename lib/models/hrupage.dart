import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class HruPage extends StatelessWidget {
  const HruPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/hru.png'),
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
                    child: Text("សាកលវិទ្យាល័យធនធានមនុស្សត្រូវបានបង្កើតឡើងជាលើកដំបូងដែលមានឈ្មោះថា វិទ្យាស្ថានអភិវឌ្ឍន៍ធនធានមនុស្ស នៅក្នុងខែឧសភាឆ្នាំ ១៩៩៨ ដោយស្ថាបនិក៣រូបគឺ៖ ឯកឧត្តមបណ្ឌិត សេង ផល្លី ឯកឧត្តមបណ្ឌិត ឯក មនោសែន និងឯកឧត្តម អោក សោភា ។ វិទ្យាស្ថានអភិវឌ្ឍន៍ធនធានមនុស្ស បានផ្តល់វគ្គបណ្ដុះបណ្ដាលរយៈពេលខ្លីៗ ពី៣ ទៅ ៦ខែ និងរយៈពេល១ឆ្នាំ លើមុខវិជ្ជាសំខាន់ៗដូចជា៖ គណនេយ្យ ទីផ្សារ ការគ្រប់គ្រង ភាពជាអ្នកដឹកនាំ កិច្ចការរដ្ឋបាល ជំនាញលេខាធិការ និងភាសាបរទេស។ ដើម្បីឆ្លើយតបទៅនឹងការអភិវឌ្ឍសេដ្ឋកិច្ចសង្គមនិងដើម្បីឆ្លើយតបទៅនឹងតម្រូវការសម្រាប់ការសិក្សាស្រាវជ្រាវ ការបណ្តុះបណ្តាលដែលមានគុណភាព វិទ្យាស្ថាននេះបានអភិវឌ្ឍខ្លួនក្លាយជាសាកលវិទ្យាល័យធនធានមនុស្ស ដោយអនុក្រឹត្យលេខ ៤១ អនក្រ.បក របស់រាជរដ្ឋាភិបាលកម្ពុជា ចុះថ្ងៃទី ២១ ខែកុម្ភៈ ២០0៥។ សាកលវិទ្យាល័យធនធានមនុស្ស (HRU) មានកម្មវិធីបណ្តុះបណ្តាលកម្រិតក្រោយបរិញ្ញាបត្រ (ថ្នាក់បរិញ្ញាបត្រជាន់ខ្ពស់ និងថ្នាក់បណ្ឌិត) និងមានមហាវិទ្យាល័យចំនួនប្រាំ សម្រាប់កម្មវិធីបណ្តុះបណ្តាលកម្រិតបរិញ្ញាបត្រ និងកម្រិតបរិញ្ញបត្ររង ដែលរួមមាន៖ មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្រ្ត និងភាសា មហាវិទ្យាល័យវិទ្យាសាស្ត្រនិងបច្ចេកវិទ្យា មហាវិទ្យាល័យវិទ្យាសាស្ត្រសង្គម និងសេដ្ឋកិច្ច មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ជកម្មនិងទេសចរណ៍ និងមហាវិទ្យាល័យនីតិសាស្រ្តនិងវិទ្យាសាស្រ្តនយោបាយ។ បច្ចុប្បន្ន សាកលវិទ្យាល័យធនធានមនុស្ស បាននិងកំពុងបណ្តុះបណ្តាលលើកម្មវិធីសិក្សា វគ្គសិក្សាខ្លីៗ បរិញ្ញាបតត្ររង បរិញ្ញាបត្រ បរិញ្ញាបត្រជាន់ខ្ពស់ និងថ្នាក់បណ្ឌិត លើឯកទេសសិក្សាជាច្រើនដូចជា៖ ទីផ្សារ ការគ្រប់គ្រង គណនេយ្យនិងហិរញ្ញវត្ថុ ធនាគារនិងហិរញ្ញវត្ថុ សណ្ឋាគារនិងទេសចរណ៍ ភាសាអង់គ្លេសសម្រាប់ការបង្រៀន ភាសាអង់គ្លេសសម្រាប់ទំនាក់។ល។សាកលវិទ្យាល័យធនធានមនុស្ស បច្ចុប្បន្ននេះគឺជាគ្រឹះស្ថានឧត្តមសិក្សាដែលពេញនិយម និងមានប្រជាប្រិយភាពនៅកម្ពុជា ដែលទទួលស្គាល់ពីគណៈកម្មាធិការទទួលស្គាល់គុណភាពអប់រំនៃកម្ពុជា ថាជាស្ថាប័នអប់រំដែលមានគុណភាពខ្ពស់។ ជារៀងរាល់ឆ្នាំមាននិស្សិតចុះឈ្មោះចូលរៀនថ្មីជាង ១០០០ នាក់។ រហូតដល់ឆ្នាំ ២០១៨ ចំនួននិស្សិតបញ្ចប់ការសិក្សាពីសាកលវិទ្យាល័យនេះគឺប្រហែលបីម៉ឺនប្រាំពីរពាន់នាក់ ហើយមាននិស្សិតកំពុងសិក្សាចំនួន ៦៥០០០នាក់។ សាកលវិទ្យាល័យធនធនាមនុស្ស បានសម្ពោធដាក់ឱ្យប្រើប្រាស់ អគារសិក្សាផ្ទាល់ខ្លួនធំថ្មី ទំនើប កម្ពស់១២ជាន់ កណ្តាលរាជធានីភ្នំពេញ ដែលមានវិសាលភាពទទួលបណ្តុះបណ្តាល និស្សិតប្រមាណ ២ម៉ឺននាក់ បំពាក់ដោយសម្ភារឧបទ្ទេសទំនើបៗ នៅគ្រប់បន្ទប់ការងារ និងបន្ទប់សិក្សា ប្រកបដោយ ផាសុកភាព មានបណ្ណាល័យធំទូលាយ បន្ទប់អនុវត្តគ្រប់ប្រភេទ និងមានអាហារដ្ឋាន។ល។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}