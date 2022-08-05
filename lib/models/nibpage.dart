import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class NibPage extends StatelessWidget {
  const NibPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/nib.png'),
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
                    child: Text("វិទ្យាស្ថានជាតិពាណិជ្ជសាស្រ្ដ (National Institute Of Business) ត្រូវបានស្គាល់ច្បាស់ថាជាសាលារដ្ឋដែលមានអាយុកាលចំណាស់ នៅក្នុងប្រទេសកម្ពុជា។ វិទ្យាស្ថាន​(NIB) ត្រូវបានបង្កើតឡើងតាំងពីឆ្នាំ ១៩៧៩ និងបន្ដបណ្ដុះបណ្ដាលនូវមុខវិទ្យាជាច្រើនរហូតមកដល់សព្វថ្ងៃនេះ។ វិទ្យាស្ថានជាតិពាណិជ្ជសាស្រ្ដឈរលើទិសស្លោកៈ សមត្ថភាព ការងារ ប្រាក់ចំណូល។ វិទ្យាស្ថានជាតិពាណិជ្ជសាស្រ្តត្រូវបានបង្កើតឡើងនៅឆ្នាំ ១៩៧៩ បន្ទាប់ពីប្រទេសជាតិបានរំដោះចេញពីគំនរផេះនៃ របបប្រល័យពូជសាសន៍ ប៉ុល ពត។ កាលណោះទីតាំង វិទ្យាស្ថាននេះស្ថិតនៅប្លុកវិទ្យាល័យដេកាតរបស់បារាំងក្នុង ពេលដំណើរការធ្វើសកម្មភាពដំបូងវិទ្យាស្ថានមានឈ្មោះថា ”សាលាបច្ចេកទេសពាណិជ្ជកម្មមជ្ឈឹម” មានឋានៈស្មើរ នឹងនាយកដ្ឋាន ស្ថិតក្រោមការគ្រប់គ្រងផ្ទាល់របស់ក្រសួងពាណិជ្ជកម្ម។ ពេលនោះសាលាបាន បណ្តុះបណ្តាល កម្មាភិបាល បុគ្គលិកក្នុងវិស័យពាណិជ្ជកម្ម និងកម្មាភិបាល បុគ្គលិកនៅតាមស្ថាប័នអង្គភាពផ្សេងទៀតដែលមានការ ពាក់ពន្ឋ័ដល់វិស័យចរាចរ និងការបែងចែកទំនិញ។ លុះមកដល់ឆ្នាំ ១៩៨៥ ក្រុមប្រឹក្សារដ្ឋមន្រ្តីបានចេញសេចក្តីសម្រេចប្តូរឈ្មោះពីសាលាបច្ចេកទេសពាណិជ្ជកម្មមជ្ឈឹម មកជា សាលាមធ្យមសិក្សាឯកទេសពាណិជ្ជកម្ម មានឋានៈស្មើមន្ទីរពាណិជ្ជកម្មខេត្ត ក្រុង ហើយការបណ្តុះបណ្តាល ថ្នាក់មធ្យមឯកទេសពាណិជ្ជកម្មលើមុខសញ្ញាមន្រ្តីរាជការនិងសិស្សសាលាចំណេះទូទៅ ដែលមានកម្រិតវប្បធម៌ចាប់ពី សញ្ញាបត្រមធ្យមសិក្សាកម្រឹត ១ ឡើង ហើយការសិក្សាមានរយៈពេល ៣ឆ្នាំ ក្នុងនោះត្រូវបំពេញបន្ថែមនូវចំណេះ ដឹងមូលដ្ឋានមួយឆ្នាំនិងសិក្សាមុខជំនាញចំនួន ២ឆ្នាំ។ មុខជំនាញត្រូវបានបណ្តុះបណ្តាលមាន អាជីវកម្មពាណិជ្ជកម្ម គណនេយ្យផែនការស្ថិតិ ពាណិជ្ជកម្មក្រៅប្រទេស សម្ភារបរិក្ខារ។ក្នុងឆ្នាំ១៩៩៤ សាលាមធ្យមសិក្សាឯកទេសពាណិជ្ជកម្ម ត្រូវបានផ្ទេរពីការគ្រប់គ្រងរបស់ក្រសួងពាណិជ្ជកម្ម មកស្ថិត នៅក្រោមការគ្រប់គ្រងផ្ទាល់របស់ក្រសួងអប់រំ យុវជន និងកីឡាវិញ។ ផ្អែកលើលក្ខណៈសម្បត្តិរបស់សាលានិងស្រប តាមគោលនយោបាយសកលភាវូបនីយកម្ម ក្នុងឆ្នាំ២០០១ ត្រូវបានរាជរដ្ឋាភិបាលតម្លើងឋានៈ និងប្រែក្លាយទៅជា គ្រឹះស្ថាន ឧត្តមសិក្សាតាមអនុក្រឹត្យលេខ ១០៨ អនក្រ.បក ចុះថ្ងៃទី២៤ ខែតុលា ឆ្នាំ២០០១ ដោយមាន ឈ្មោះថា វិទ្យាស្ថានជាតិពាណិជ្ជសាស្រ្ត “NATIONAL INSTITUTE OF BUSINESS“។ ក្នុងឆ្នាំ២០០៤ វិទ្យាស្ថានជាតិពាណិជ្ជសាស្រ្ត ត្រូវបានផ្ទេរមកស្ថិតក្រោមការគ្រប់គ្រងរបស់ក្រសួងការងារ និងបណ្តុះ បណ្តាលវិជ្ជាជីវៈវិញតាមអនុក្រឹត្យលេខ ៣៧ អនក្រ.បក ចុះថ្ងៃទី១៦ ខែសីហា ឆ្នាំ២០០៤។វិទ្យាស្ថានជាតិពាណិជ្ជសាស្រ្តត្រូវបានទទួលស្គាល់ពី គណៈកម្មាធិការទទួលគុណភាពអប់រំនៃកម្ពុជានិងអង្គការស្តង់ដា អន្តរជាតិ(ISO 9001:2008)ហើយសព្វថ្ងៃវិទ្យាស្ថានជាតិពាណិជ្ជសាស្រ្ត បានបំពេញតួនាទី និងភារកិច្ចរបស់ខ្លួន យ៉ាងសកម្មក្នុងការអប់រំ និងបណ្តុះបណ្តាលលើជំនាញ គណនេយ្យនិងហិរញ្ញវត្ថុ ធនាគារនិងហិរញ្ញវត្ថុ គ្រប់គ្រងអាជីវកម្ម លក់និងទីផ្សារ ទំនាក់ទំនងអន្តរជាតិ គ្រប់គ្រងពាណិជ្ជកម្មអន្តរជាតិ ព័ត៌មានវិទ្យា ភាសាអង់គ្លេស។ល។ ទាំងថ្នាក់សញ្ញាបត្របច្ចេកទេសនិងវិជ្ជាជីវៈ ថ្នាក់បរិញ្ញាបត្ររង ថ្នាក់បរិញ្ញាបត្រ និងថ្នាក់បរិញ្ញាបត្រជាន់ខ្ពស់។ ជាលទ្ធផលវិទ្យាស្ថានបានបណ្តុះបណ្តាលធនធានមនុស្សប្រកបដោយគុណភាព និងមាន សមត្ថភាពឆ្លើយតបបានតាមតម្រូវការទីផ្សារការងារទាំងក្នុង និងក្រៅប្រទេស។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}