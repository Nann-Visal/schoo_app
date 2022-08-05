import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class NumPage extends StatelessWidget {
  const NumPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/num.png'),
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
                    child: Text("'សាកលវិទ្យាល័យ​ជាតិ​គ្រប់គ្រង​​' ({{Lang​-en | National University of Management​}​} , NUM​) ជា​សាលា​ពាណិជ្ជកម្ម​មួយ​នៅ​ក្នុង [[រាជធានី​ភ្នំពេញ​]​] [[ប្រទេស​កម្ពុជា​]​] ដែល​មាន​ទីតាំង​ស្ថិត​នៅ​ក្បែរ [[​ស្ថា​នី​យ៍​រថភ្លើង​ក្នុង​រាជធានីភ្នំពេញ ]​] ។ សាកល​វិទ្យា​ល័​យ​នេះ​បាន​ផ្តល់​នូវ​កម្មវិធី​បណ្តុះបណ្តាល​ដល់មនុស្សទាំង​អស់​នៅ​ក្នុង​តំបន់​គ្រប់គ្រង​, សេដ្ឋកិច្ច​, ពាណិជ្ជកម្ម​, ពត៍មានវិទ្យា​, ច្បាប់​ពាណិជ្ជកម្ម​, ទេសចរណ៍​, និង​ភាសា​បរទេស​អម​ដោយ​ការ​ស្រាវ​ជ្រាវ ​និង​ការ​អភិវឌ្ឍ​នៅ​ក្នុង​ការ​ឆ្លើយ​តប​ទៅ​នឹង​តម្រូវ​ការ​ទីផ្សារ​ការងារ​។ សាកលវិទ្យាល័យ​ជាតិ​គ្រប់គ្រង​ត្រូវ​បាន​បង្កើត​ឡើង​ក្នុង​ឆ្នាំ 1983 ជា​វិទ្យាស្ថាន​វិទ្យា​សា​ស្រ្ត​សេដ្ឋកិច្ច (ទាំងអស់ ESI​) និង​រហូត​ដល់​ឆ្នាំ 1991 បាន​ទទួល​ជំនួយ​ពី​សាកល​វិទ្យាល័យ​ជាតិ​សេដ្ឋកិច្ច​នៅ​ទីក្រុង​ហាណូយ​ប្រទេស​វៀតណាម​។ ក្នុង​កំឡុង​ពេល​នេះ​និស្សិត​ត្រូវ​បាន​ចុះ​ឈ្មោះ​ចូល​រៀន​ក្នុង​កម្មវិធី​ថ្នាក់​បរិញ្ញា​ប្រាំ​ឆ្នាំ​ជាមួយ​ភាសា​វៀតណាម​​ជា​ភាសា​ដ៏​សំខាន់​នៃ​ការ​បង្រៀន​។ កម្មវិធី​សិក្សា​នេះ​ដែល​ត្រូវ​បាន​កំណត់​ដោយ​មហាវិទ្យាល័យ​មក​ទស្សនា​ពី​ទីក្រុង​ហាណូយ​បាន​រួម​បញ្ចូល​មុខ​ជំនាញ​ហិរញ្ញវត្ថុ​, ពាណិជ្ជកម្ម​, កសិកម្ម​, ឧស្សាហកម្ម​និង​សង្គមនិយម​ផែនការ​។ ជា​មួយ​នឹង​ការ​បើក​ឡើង​នៃ​ប្រទេស​កម្ពុជា​ចំពោះ​សហគមន៍​អន្តរជាតិ​ក្នុង​អំឡុង​ដើម​ទសវត្សរ៍​ឆ្នាំ 1990​, កម្មវិធី ESI នេះ​ត្រូវ​បាន​ប្តូ​រ​ឈ្មោះ​ទៅជា​មហា​វិទ្យាល័យ​ពាណិជ្ជកម្ម (FOB​) ។ ការ​គាំទ្រ​ដំបូង​សម្រាប់ FOB ត្រូវ​បាន​ផ្តល់​ដោយ​មូលនិធិ​អាស៊ី ​និង​នៅ​ពេល​ក្រោយ​តាម​រយៈ​បី​ឆ្នាំ​ជា​ជំនួយ​ឥត​សំណង​របស់ USAID (ឆ្នាំ 1994 ដល់​ឆ្នាំ 1997​) ដោយ​សាកលវិទ្យាល័យ​ទីក្រុង Georgetown និង​សាកលវិទ្យាល័យ​សា​ន់​ហ្វ្រា​ន​ស៊ី​ស្កូ​។ ការ​គាំទ្រ​នេះ​បាន​ផ្តល់​ការ​បណ្តុះបណ្តាល​គ្រូ ​ការ​អភិវឌ្ឍ​ស្ថាប័ន​ និងបានលើកទឹកចិត្តដល់ការផ្លាស់ប្តូរកម្មវិធី​សិក្សា​នៅ​តាម​បណ្តោយ​បន្ទាត់​នៃ​សាលា​អ​ន្ដ​រ​ជាតិ​ ឬ​អាជីវកម្ម​បែប​អាមេរិក​ថែមទៀត​។ ជំនាញ​ទីផ្សារ​និង​គណនេយ្យ​ត្រូវ​បាន​ណែនាំ​ក្នុង​អំឡុង​ពេល​នេះ​ និង​រយៈពេលសិក្សា​នៃ​កម្មវិធី​ថ្នាក់​បរិញ្ញា​នេះ​ត្រូវ​បាន​កាត់​បន្ថយ​ពី​ប្រាំ​ទៅ​បួន​ឆ្នាំ​នៃ​ការ​សិក្សា​។ ជា​ការពិត​ណាស់​ ច្បាប់​ពាណិជ្ជកម្ម​ត្រូវ​បាន​បន្ថែម​ទៅ​ក្នុង​កម្មវិធី​សិក្សា​ដោយ​សាកលវិទ្យាល័យ​សាលា​ច្បាប់​សាន​ហ្វ្រា​ន​ស៊ី​ស្កូ​។ ​នៅ​ក្នុង​ឆ្នាំ 2004​, FOB ត្រូវ​បាន​ផ្លាស់​ទៅ​ជា​សាកលវិទ្យាល័យ​ជាតិ​គ្រប់គ្រង (NUM​)​។ ការ​ផ្តល់​កម្មវិធី​ត្រូវ​បាន​ពង្រីក​ដើម្បី​រួម​បញ្ចូល​វិស័យ​ទេសចរណ៍​ និង​គ្រប់គ្រង​បដិសណ្ឋារកិច្ច​, ធនាគារ​ហិរញ្ញវត្ថុ​, និង​ប្រព័ន្ធ​ព័ត៌មាន​គ្រប់គ្រង​នេះ​។ វិទ្យាល័យ​ជាតិ​គ្រប់គ្រង​បាន​បើក​កម្មវិធី​អនុបណ្ឌិត​លើក​ដំបូង​នៅ​ក្នុង​ប្រទេស​កម្ពុជា​នៅ​ក្នុង​កិច្ច​សហប្រតិបត្តិការ​ជាមួយ​សាកលវិទ្យាល័យ Utara ប្រទេស​ម៉ាឡេស៊ី (UUM​) ដែលជាសាកល​វិទ្យាល័យមួយ ​ដែល​ឧបត្ថម្ភ​ដោយ​រដ្ឋ​នៅ​ភាគ​ខាងជើង​ប្រទេស​ម៉ាឡេស៊ី​។ វិទ្យាល័យ​ជាតិ​គ្រប់គ្រង​រក្សា​​ការ​ផ្លាស់​ប្តូ​រ​មហាវិទ្យាល័យ​ឋ និង​ការ​ស្រាវ​ជ្រាវ​កម្មវិធី​ប្រាំ​ឆ្នាំ​ជាមួយ​សាកលវិទ្យាល័យ​តំបន់ Antwerp​, បែលហ្ស៊ិក ​និង​ពេល​នេះ​បាន​បើក​មជ្ឈមណ្ឌល​សម្រាប់​សហគ្រិន​ និង​ការ​អភិវឌ្ឍ​នៅ​ក្នុង​ភាព​ជា​ដៃគូ​ជាមួយ​សាកលវិទ្យាល័យ Fisk (Nashville​, អាមេរិក​) និង​សាកលវិទ្យាល័យ​រដ្ឋ​ក្នុង​រដ្ឋ Tennessee ដែលត្រូវបាន​ឧបត្ថម្ភ​ដោយ UNCF  ទីភ្នាក់ងារ USAID ។ បច្ចុប្បន្ន​នេះ​ជាង 10.000 សិស្ស​ចូលរួម​វគ្គ​បណ្តុះបណ្តាល​ធ្វើ​នៅ​បរិវេណ​សាលា​ដ៏​សំខាន់​នៃសាកលវិទ្យាល័យ​ជាតិ​គ្រប់គ្រង​ក្នុង​រាជធានី​ភ្នំពេញ​។ សាកលវិទ្យាល័យ​ជាតិ​គ្រប់គ្រង​ប្រតិបត្តិការ​មួយ​បរិញ្ញាបត្រ​ពេញលេញ​នៃ​កម្មវិធី​បរិញ្ញាបត្រ​គ្រប់គ្រង​ពាណិជ្ជកម្ម​នៅ​ខេត្ត​បាត់ដំបង​ជាមួយ​សិស្ស​ជាង 700 នាក់​បាន​ចូលរួម​ក្នុង​វគ្គ​បណ្តុះបណ្តាល​ធ្វើ​នៅ​បរិវេណ​សាលា​ខេត្ត​ វិទ្យាល័យ​ជាតិ​គ្រប់គ្រង​បាន​។ ",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}