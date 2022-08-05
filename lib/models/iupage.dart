import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class IuPage extends StatelessWidget {
  const IuPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/iu.png'),
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
                    child: Text("សាកលវិទ្យាល័យអន្តរជាតិ (ឡាតាំង: International University, IU) គឺ​ជា​ស្ថាប័នឧត្ដមសិក្សាឯកជន​មួយយ​ដែលមាន​ឯកទេស​ខាង​ឱសថ​សាស្ត្រ​និង​វិទ្យាសាស្ត្រសុខាភិបាល។បង្កើត​ឡើង​នៅ​ឆ្នាំ២០០២​ សាកលវិទ្យាល័យ​អន្តរជាតិ​ត្រូវ​បាន​ទទួលស្គាល់​ដោយ​រាជ​រដ្ឋាភិបាល​នៃកម្ពុជា ក្រសួង​អប់រំ​យុវជន​និង​កីឡា​និង គណៈកម្មាធិការ​ទទួល​ស្គាល់​គុណភាព​អប់​រំ​នៃ​កម្ពុជា។ គុណភាព​អប់រំ​របស់​សាកល​វិទ្យាល័យ​អន្តរជាតិ​ត្រូវ​បាន​ទទួល​ស្គាល់​ដោយស្ថាប័ន​វេជ្ជសាស្ត្រ​ឆ្លង​ដែន​ដូច​ជា​ មូលនិធិ​អាស៊ី​អឺរ៉ុប ASAIHL, អង្គការ​សហប្រជាជាតិ​ អង្គ​ការ​សុខភាព​ពិភពលោក​ រួម​ទាំង​ ការ​ទទួល​ស្គាល់​ពី ECFMG, FAIMER និង IMED ដែល​ស្ថិត​នៅ​សហរដ្ឋ​អាមេរិក ដែល​អនុញ្ញាឲ្យ​និស្សិត​ដែល​ញ្ចប់​ការ​សិក្សា​ផ្នែក​វេជ្ជសាស្ត្រenablingអាច​បន្ត​ប្រលង​ USMLE ដែល​ការ​បញ្ចប់ដោយ​ជោគជ័យ​និង​អាច​ចុុះឈ្មោះ​សុំសិទ្ធិ​ជ្រក​កោន​និង​ព្យាបាល​នៅ​ សហរដ្ឋអាមេរិក។ ការ​បង្រៀន​នៅ​សាកលវិទ្យាល័យអន្តរជាតិតមាន​ជា​ភាសា​ខ្មែរ​និង​អង់គ្លេសThe medium of instruction used at IU are English and Khmer។មហាវិទ្យាល័យមាន ឱសថ​សាស្ត្រ and Pediatrics, Nursing Sciences, ទន្តសាស្ត្រ, មនុស្សសាស្ត្រ​និ​ង​ភាសា, វិទ្យាសាស្ត្រ​និង​បច្ចេក​វិទ្យា, កសិកម្មនិង​អភិវឌ្ឍជនបទ, សុខភាព​សាធារណៈ, ពានិជ្ជកម្ម​និង​សេដ្ឋកិច្ច, វិទ្យាសាស្ត្រ​សង្គម​និង​សារព័ត៌​មាន​, ច្បាប់។ ថ្លៃសិក្សា ប្រហាក់​ប្រហែល​៣០០០ដុល្លា ​ ក្នុង​១ ឆ្នាំដោយ​គិ​ត​ចាប់ពីត្រីមាស​ទី​៣  សម្រាប់​និស្សិត​ពេទ្យ។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}