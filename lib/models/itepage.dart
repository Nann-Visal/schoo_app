import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class ItePage extends StatelessWidget {
  const ItePage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/ite.png'),
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
                    child: Text("វិទ្យា​ស្ថាន​បច្ចេក​វិទ្យា​កម្ពុជា​បង្កើត​ឡើង​នៅ​ឆ្នាំ​១៩៦៤ មាន​ឈ្មោះ​ថា វិទ្យា​ស្ថាន​បច្ចេក​ទេស​ជាន់​ខ្ពស់​មិត្ត​ភាព​កម្ពុជា​សូវៀត (Institut Technique Supérieur de l’Amitié Khméro-Soviétique: ITSAKS) ។ វិទ្យា​ស្ថាន​នេះ​ត្រូ​វ​បាន​​ផ្ដល់​ជំនួយ​ពី​សហភាព​សូវៀត​រហូត​ដល់​ឆ្នាំ ១៩៧៥ និង​ពី ១៩៨០ ដល់ ១៩៩១ ។ នៅ​ឆ្នាំ ១៩៩១ សូវៀត​បាន​បញ្ចប់​ជំនួយ​ទាំង​ស្រុង​ភ្លាមៗ​ដល់​វិទ្យាស្ថាន ។ នៅ​ឆ្នាំ​១៩៩៣ រដ្ឋាភិបាល​កម្ពុជា​និង​រដ្ឋាភិបាល​បារាំង​បាន​ចុះ​កិច្ច​ព្រម​ព្រៀង​គ្នា​ដើម្បី ​អភិវឌ្ឍ​វិទ្យាស្ថាន​បន្ត ដោយ​ប្តូរ​ឈ្មោះ​មក​ជា​វិទ្យា​ស្ថាន​បច្ចេក​វិទ្យា​កម្ពុជា ជា​ភាសា​បារាំង (Institut de Technologie du Cambodge: ITC) ។វិទ្យាស្ថាន​បច្ចេកទេស​វិទ្យា​កម្ពុជា (ITC) ជា​គ្រឹះ​ស្ថាន​ឧត្តម​សិក្សា​កម្ពុជា ដែល​គ្រប់​គ្រង​ដោយ​ទី​ភ្នាក់​ងារ​ឧត្តម​សិក្សា​នៃ​ក្រុម​ប្រទេស​និយាយ​ភាសា​បារាំង (Agence Universitaire de la Francophonie: AUF) ពី​ឆ្នាំ ១៩៩៣ ដល់​ឆ្នាំ ២០០៤ នៅ​ក្នុង​ក្រប​ខ័ណ្ឌ​នៃ​ជំនួយ​ឧបត្ថម្ភ​ហិរញ្ញ​ប្បទាន​របស់​ប្រទេស​បារាំង (ក្រសួង​ការ​បរទេស​ និង​ស្ថាន​ទូតបារាំង) ។​ វិទ្យាស្ថាន​បច្ចេកទេស​វិទ្យា​កម្ពុជា ធ្វើ​ការ​បណ្តុះ​បណ្តាល​អ្នក​គ្រប់​គ្រង​បច្ចេកទេស ដែល​ជា​តម្រូវ​ការ​ចាំ​បាច់​ក្នុង​ការ​អភិវឌ្ឍ​ប្រទេស​កម្ពុជា​ក្នុង​វិស័យ​វិទ្យាសាស្រ្ត វិស្វករ​ ហើយ​មាន​ការ​សិក្សា​ពីរ​ផ្នែក៖ ផ្នែក​ វិស្វករ សិក្សា​រយៈ​ពេល​ ៥ឆ្នាំ បើក​សម្រាប់​និស្សិត​ចំនួន ៣០នាក់​ ដែល​ត្រូវ​បាន​ជ្រើស​រើស​តាម​ការ​ប្រឡង​ប្រជែង​កម្រិត​សញ្ញាប័ត្រ​ទុតិយភូមិ ។ ផ្នែក​វិស្វករ​នេះ បើក​បង្រៀន​ដល់​និស្សិត​ដែល​ចេះ​ភាសា​បារាំង​នៅ​ក្នុង​តំបន់​ផង​ដែរ ហើយ​និស្សិត​ទទួល​ការ​បណ្តុះបណ្តាល​ជា​ភាសា​បារាំង ,ផ្នែក អ្នក​បច្ចេក​ទេស​ជាន់​ខ្ពស់ (សញ្ញា​បត្រ​ឧត្តម​សិក្សា​បច្ចេក​វិទ្យា) សិក្សា​រយៈ​ពេល​ ៣ឆ្នាំ ។ ការ​ជ្រើស​រើស​និសិ្សត​ ២០០នាក់​ បានធ្វើ​ឡើង​តាម​ការ​ពិនិត្យ​សំនុំ​ឯកសារ​សុំ​ចូល​រៀន ចាប់​ពី​សញ្ញា​ប័ត្រ​ទុតិយភូមិ ។ និស្សិត​ទទួល​ការ​បណ្តុះ​បណ្តាល​ជា​ ភាសា​ខ្មែរ​ផង​ និង​បារាំង​ផង ។នៅ​ក្នុង​ផ្នែក​ទាំង​ពីរ​ខាង​លើ​នេះ តម្រូវ​ឱ្យ​និស្សិត​ចេះ​ច្បាស់​ភាសា​អង់គ្លេស​ផង​ដែរ ។ វិទ្យាស្ថានចែកចេញជា៩ដេប៉ាតឺម៉ង់៖ ដេប៉ាតឺម៉ង់ទូទៅ Département de Tronc Common (TC) ៖ បណ្តុះបណ្តាលមុខវិជ្ជាគ្រឹះ(គណិតវិទ្យា រូបវិទ្យា គីមីវិទ្យា)សំរាប់និស្សិតឆ្នាំទី១និងទី២ និងភាសាបរទេស​(បារាំងនិងអង់គ្លេស)សំរាប់និស្សិតគ្រប់ជំនាន់។ ទេពកោសល្យគីមីនិងចំណីអាហារ Génie Chimie et Alimentaire (GCA)។ ទេពកោសល្យសំណង់ស៊ីវិល Génie Civil (GCI)។ ទេពកោសល្យវិស្វកម្ម-ស្ថាបត្យកម្ម ( OAC )។ ទេពកោសល្យអគ្គិសនីនិងថាមពល Génie Electricité et Energie (GEE)។ ទេពកោសល្យព័ត៌មានវិទ្យានិងទំនាក់ទំនង Génie Informatique et Communication (GIC)។ ទេពកោសល្យឧស្សាហកម្មនិងមេកានិក Génie Indistruel et Mécanique (GIM)។ ទេពកោសល្យជនបទ Génie Rural (GRU)។ ទេពកោសល្យធនធានរ៉ែ និងភូគព្ភសាស្ត្រ Génie Géoressources et Géotechnique(GGE)។ ទេពកោសល្យ ទូរគមនាគមន៏និងបណ្តាញ ( GTR )។ អាសយដ្ឋាន​៖ មហាវិថី សហព័ន្ធ​រុស្ស៊ី ភ្នំពេញ",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}