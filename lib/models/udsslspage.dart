import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class UdsslsPage extends StatelessWidget {
  const UdsslsPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/udssls.png'),
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
                    child: Text("សាកលវិទ្យាល័យ​វិទ្យា​សាស្ត្រ​សុខាភិបាល(ស.វ.ស) ហៅ​ក្រៅថា​សាលា​ក្រហម ជាភាសាអង់គ្លេស University of Health Sciences (U.H.S) និង ជា​ភាសា​បារាំង Université Des Sciences De La Santé (U.S.S)។ សាកលវិទ្យាល័យ​វិទ្យាសាស្ត្រសុខាភិបាល ជា​គ្រឹះស្ថាន​ឧត្ដមសិក្សា​ផ្នែក​សុខាភិបាលដែល​​មានវ័យចំណាស់​មួយ​។ សាកលវិទ្យាល័យ​នេះដូច​ជា​សាកលវិទ្យាល័យ​មួយ​ចំនួន​ដែល​កើ​ត​ឡើង​ដំណាល​គ្នា​ដែរ​ គឺ​បាន​ប្ដូរ​ឈ្មោះច្រើន​ដង​ហើយត្រូវ​អាក់ខានដំណើរ​ការ​នាសម័យ​កម្ពុជា​ប្រជាធិបតេយ្យ។ ឆ្នាំសិក្សា​ថ្មីនេះ គឺ​ជា​ជំនាន់​ទី​៤២នៃ​សាកលវិទ្យាល័យ។​ សាកលវិទ្យាល័យ​វិទ្យាសាស្ត្រ​សុខាភិបាល បង្កើត​ឡើង​នៅខែ​មិថុនា ឆ្នាំ ១៩៤៦ [២]។ កាល​បង្កើតឡើង​ដំបូង សាកលវិទ្យាល័យ​នេះ​ឈ្មោះ សាលាមន្ត្រីវិទ្យាពេទ្យ។ គ្រឹះស្ថាន​នេះប្ដូរឈ្មោះច្រើន​ដង៖ ១៩៥៣៖ សាលាភូមិន្ទវិទ្យា​ពេទ្យ កម្ពុជា, ១៩៦២៖​ មហាវិទ្យាល័យវេជ្ជសាស្រ្ត និងឱសថសាស្រ្ត, ១៩៧១៖ មហាវិទ្យាល័យអមវេជ្ជសាស្រ្ត (បន្ថែម​ ផ្នែកទន្តសាស្ត្រឆ្នាំនេះដែរ), ១៩៨០៖ មហាវិទ្យាល័យវេជ្ជសាស្រ្ត ឱសថសាស្រ្ត និង ទន្តសាស្រ្ត, ១៩៩៧៖ សាកលវិទ្យាល័យ​វិទ្យាសាស្ត្រ សុខាភិបាល។ កាលពីឆ្នាំ ១៩៦៧ មហាវិទ្យាល័យឱសថសាស្ត្រ​បាន​ផ្លាស់​ប្ដូរ​ទីតាំងទៅក្នុង​បរិវេណ សាកលវិទ្យា​ល័យភ្នំពេញ។ សាកលវិទ្យាល័យវិទ្យាសាស្ត្រសុខាភិ​បាល ចែក​ចេញជា​ស្ថាប័ន​រងដូចជា៖ ថ្នាក់​ឆ្នាំសិក្សាមូលដ្ឋាន​, មហាវិទ្យាល័យ​ វេជ្ជសាស្ត្រ, មហាវិទ្យាល័យ ឱសថសាស្ត្រ, មហាវិទ្យាល័យ ទន្តវទនសាស្ត្រ, សាលាបច្ចេកទេសថែទាំវេជ្ជសាស្ត្រ, មជ្ឍមណ្ឌល អភិវឌ្ឍន៍អប់រំវិជ្ជាជីវៈ​សុខាភិបាល។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}