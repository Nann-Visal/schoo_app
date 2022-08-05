import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class RuppPage extends StatelessWidget {
  const RuppPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/rupp.png'),
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
                    child: Text("សាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ (ហៅកាត់ ជាបារាំង: URPP ឬ​ ហៅកាត់ជាអង់គ្លេស: RUPP)​ គឺជាគ្រឹះស្ថានឧត្តមសិក្សាចំណាស់ជាងគេនិងធំជាងគេនៅកម្ពុជា។​ សាកលវិទ្យាល័យចែកចេញជា មហាវិទ្យាល័យវិទ្យាសាស្ត្រ មហាវិទ្យាល័យសង្គមសាស្ត្រនិងមនុស្សសាស្ត្រ និង វិទ្យាស្ថានភាសាបរទេសIFL។ សាកលវិទ្យាល័យមានសាស្ត្រាចារ្យប្រមាណ២៩៤នាក់ ដែលរួមមាន បណ្ឌិត១៥នាក់ និង​ ម៉ាស្ទ័រ ១៣២នាក់។ បុគ្គលិករដ្ឋបាលសរុបជាង ១៤០នាក់។នៅឆ្នាំ ២០០៧ សាកលវិទ្យាល័យមាននិស្សិតសរុបជាង ៩០០០ នាក់។​​  សកលវិទ្យាល័យភូមិន្ទភ្នំពេញត្រួវបានបង្កើតឡើងដំបូងនៅឆ្នាំ១៩៦០ អំឡុងពេលដែលប្រទេសកម្ពុជាមានការរីកចម្រើនយ៉ាងខ្លាំងក្លា ដោយមានឈ្មោះដើមថា សាកលវិទ្យាល័យភូមិន្ទ។ នៅពេលនោះភាសាដែលត្រូវបានគេប្រើប្រាស់ជាភាសាបារាំង។ នៅសម័យសាធារណរដ្ឋខ្មែរ សាកលវិទ្យាល័យបានត្រូវប្តូរឈ្មោះជាសាកលវិទ្យាល័យភ្នំពេញ។ នៅសម័យខ្មែរក្រហម សាកលវិទ្យាល័យនៅទូទាំងប្រទេស​ត្រូវបានបិទទ្វារ ហើយសាស្ត្រាចារ្យទាំងអស់បានក្លាយជាមុខសញ្ញានៃការសម្លាប់របស់ពួកខ្មែរក្រហម។ នៅឆ្នាំ១៩៨១ វិទ្យាស្ថានភាសាបរទេសIFL ត្រូវបានបើកនិងធ្វើការបណ្តុះបណ្តាលសាស្រ្តាចារ្យ​ ភាសារុស៊ី និង​​ ភាសាវៀតណាម។ ក្រោយមកមានការបញ្ចូលគ្នានូវវិទ្យាស្ថាននេះនិងសាលាគរុវិជ្ជាជាន់ខ្ពស់ដើម្បីបង្កើតជាសាកលវិទ្យាល័យភ្នំពេញ ដែលត្រូវប្តួរឈ្មោះមកដូចបច្ចុប្បន្ននៅឆ្នាំ ១៩៩៦។ នៅក្នុងទសវត្សរ៍ចុងក្រោយនេះ សាកលវិទ្យាល័យ បានបែងចែកជា៣គ្រឹះស្ថានគឺ មហាវិទ្យាល័យវិទ្យាសាស្ត្រ មហាវិទ្យាល័យសង្គមសាស្ត្រនិងមនុស្សសាស្ត្រ និង វិទ្យាស្ថានភាសាបរទេសIFL។ នៅឆ្នាំ ២០០១ សាកលវិទ្យាល័យបានបើកការបណ្តុះបណ្តាលថ្នាក់ក្រោយបរិញ្ញាបត្រ។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}