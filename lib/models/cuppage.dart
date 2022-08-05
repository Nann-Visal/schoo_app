import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class CupPage extends StatelessWidget {
  const CupPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/cup.png'),
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
                    child: Text(" ​សាកលវិទ្យាល័យចំរើនពហុបច្ចេកវិទ្យា ​ដែលមានទីតាំងថ្មីរបស់សាកលវិទ្យាល័យចំរើនពហុបច្ចេកវិទ្យា ​នៅក្បែវិទ្យាល័យសន្ធរម៉ុក​ ស្ថិតក្នុង​សង្កាត់​​ទឹកល្អក់១​ ខណ្ឌទួលគោក​ ​រាជធានីភ្នំពេញ​ ​​បានប្រកាសបើកដំណើរការជាផ្លូវការហើយនៅល្ងាចថ្ងៃទី២៨ ​ធ្នូ ២០១៦ ​​ខណៈដែលឧកញ៉ាបណ្ឌិត ឡាច សំរោង ​ត្រូវបាន​តែងតាំងជាសាកលវិទ្យាធិការ ។​ ​ក្នុងពិធីប្រកាសដំណើរការនិងប្រកាសតែងតាំងនេះ​ ក៏មានការចូលរួមពីឧកញ៉ាបណ្ឌិត​ ជា ចំរើន ​សហប្រធាន ក្រុមប្រឹក្សាភិបាល ​នៃសាកលវិទ្យាល័យចំរើនពហុបច្ចេកវិទ្យា ​និងគណៈគ្រប់គ្រងនៃសាកលវិទ្យាល័យ ​ព្រមទាំងសាស្ដ្រាចារ្យជាច្រើននាក់ផងដែរ។ ថ្លែងក្នុងឱកាសនោះឧកញ៉ាបណ្ឌិត​ ឡាច សំរោង ​ក្នុងនាមជាសាកលវិទ្យាធិការ ​បាន​លើកឡើងនូវការប្ដេជ្ញាចិត្តថា​ «​គោរពនូវគោលនយោបាយរបស់សម្ដេចតេជោ ហ៊ុន សែន ​នាយករដ្ឋមន្ដ្រីនៃកម្ពុជា ​​ដែលសម្ដេចជាស្ថាបនិកនៅក្នុងការអនុញ្ញាតឲ្យមានវត្តមានសាកលវិទ្យាល័យនេះ​ ដោយយោងតាមអនុក្រឹត្យ៥៦ អនក្របក ចុះថ្ងៃទី១៤ ខែមិថុនា​ ឆ្នាំ២០០២ ​ដើម្បីសាកលវិទ្យាល័យដំណើរការ»។​ លោកឧកញ៉ាបណ្ឌិតបញ្ជាក់ថា ​គោលនយោបាយរបស់រាជរដ្ឋាភិបាល​ គឺធ្វើឲ្យមនុស្សទាំងអស់មានចំណេះដឹង ចំណេះដឹងនៅក្នុងថ្នាក់បឋម​ ថ្នាក់មធ្យម ​ថ្នាក់ឧត្តមសិក្សា ​និងក្រោយឧត្តមសិក្សា​ រួមទាំងចំណេះដឹងដែលទៅរៀនជាប្រចាំរៀនរហូត​ រៀនមិនចេះចប់ ។ លោកថា ការ​​ប្ដេជ្ញាចិត្តនៅពេលនេះ ​គឺធ្វើឡើងដើម្បីទ្រទ្រង់ ​និងធ្វើឲ្យមាននិរន្ដរភាព​នៃសាកលវិទ្យាល័យចំរើនពហុបច្ចេកវិទ្យា ​ដោយឈរលើគោលការ៣ ​ទី១៖ គោរពចំពោះ​ការ​ខិតខំប្រឹងប្រែងរៀនសូត្ររបស់និស្សិត ​ទី២៖ គោរពចំពោះវីរភាពរបស់សាស្ដ្រាចារ្យដែលជាគណៈគ្រប់គ្រង់​ និងទី៣៖ គោរពចំពោះការលះបង់ ​និងការប្ដូរផ្ដាច់​ ដែលផ្ដល់​នូវការទុកចិត្តរបស់​លោកបណ្ឌិត ជា ចំរើន ។ ​ ជាពិសេស​ ឧកញ៉ាបណ្ឌិត ឡាច ចំរើន ​ប្តេជ្ញានឹងធ្វើឲ្យសាកលវិទ្យាល័យចំរើនពហុបច្ចេកវិទ្យា ​ស្ថិតនៅក្នុងការអប់រំកម្រិត​គុណភាព​ខ្ពស់ ​ហើយនិស្សិតចេញ​ពីសាកលវិទ្យាល័យនេះ​ ទទួលបានការយកទៅធ្វើការងារ ​និងទទួលប្រាក់ខែខ្ពស់។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}