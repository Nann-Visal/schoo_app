import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class McuPage extends StatelessWidget {
  const McuPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/mcu.png'),
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
                    child: Text("សាកលវិទ្យាល័យមានជ័យចាប់ផ្ដើមសាងសង់នៅថ្ងៃទី ០៦ ខែ កញ្ញា ឆ្នាំ ២០០៦ លើផ្ទៃដី ២១,៧ ហិចតា ក្នុងគម្រោងថវិកា ៣.៥០០.០០០ ដុល្លារអាមេរិច ។ សាកលវិទ្យាល័យមានជ័យមានទីតាំងស្ថិតនៅក្នុងភូមិបាណយ សង្កាត់ទឹកថ្លា ក្រុងសិរីសោភ័ណ ខេត្តបន្ទាយមានជ័យ តាមបណ្ដោយដងផ្លូវជាតិលេខ ៥ ពីទីរួមខេត្ត ទៅកាន់ស្រុកអូរជ្រៅ ស្ថិតនៅខាងកើត ស្ពានទឹកថ្លា ហើយមានព្រុំប្រទល់ខាងជើងស្របផ្លូវរថភ្លើង ខាងកើតជាប់ស្រែ ខាងត្បូង និងខាងលិចជាប់ស្ទឹងសិរីសោភ័ណ ។ ផ្តួចផ្ដើមកសាងដោយ ឯកឧត្តម កែ គឹមយ៉ាន និងលោកជំទាវ ម៉ៅ ម៉ាល័យ ដែលស្ថិតនៅក្នុងភូមិ បាណយ សង្កាត់ទឹកថ្លា ក្រុងសិរីសោភ័ណ ខេត្តបន្ទាយមានជ័យ។ដែលមានឈ្មោះផ្លូវការថា សាកលវិទ្យាល័យ មានជ័យ ជាភាសាអង់គ្លេសថា MEANCHEY UNIVERSITY ហើយមានអក្សរកាត់ថា ស.ម.ជ ជាភាសាអង់គ្លេស M.C.Uសាកលវិទ្យាល័យ មានជ័យ ស្ថិតនៅក្រោមឪវាទរបស់ ក្រសួងអប់រំ យុវជន និងកីឡា។សាកលវិទ្យាល័យ មានជ័យបានរៀបចំពិធិបើកបវេសនកាលដំបូងនៅថ្ងៃទី ១៧ ខែមីនា ឆ្នាំ២០០៩ ក្រោមអធិបតីភាពដ៏ខ្ពងើខ្ពស់ ឯកឧត្តម ស ខេង ឧបនាយករដ្ឋមន្ដ្រី រដ្ឋមន្ត្រីក្រសួងមហាផ្ទៃ អមដំណើរដោយ ឯកឧត្តម នាយឧត្តមសេនីយ៍ កែ គឹមយ៉ាន អគ្គមេបញ្ជាការនៃកងយោធាពលខេមរភូមិន្ទ ឯកឧត្តម យឹម ឆៃលី រដ្ឋលេខាធិការក្រសួងអភិវឌ្ឍន៍ជនបទ ឯកឧត្តម ពិត ចំណាន ឯកឧត្តម អ៊ឹម សុទ្ធី រដ្ឋលេខាធិការក្រសួងអប់រំ យុវជន និងកីឡា ឯកឧត្តម អន ស៊ុំ អភិបាលខេត្តបន្ទាយមានជ័យ ព្រមទាំងមានការអញ្ជីញចូលរួមពី ឯកឧត្តម លោកជំទាវ លោក លោកស្រី នាយទាហាន នាយអាវុធហត្ថ នាយនគរបាលខេត្ត សាស្រ្តាចារ្យ និស្សិត សិស្សានុសិស្ស លោកគ្រូ អ្នកគ្រូ និងប្រជាពលរដ្ឋយ៉ាងច្រើន កុះករ ។ ឯកឧត្តម តូច ជឿន សាកលវិទ្យាធិការនៃសាកលវិទ្យា តំណាងសាស្រ្តាចារ្យ តំណាងនិស្សិត នឹងប្រជាពលរដ្ឋ បានសម្ដែងនូវអភិវន្ទនកិច្ចដោយក្ដីគោរពដ៏ខ្ពង់ខ្ពស់ចំពោះឯកឧត្តមអណៈអធិបតី នឹងភ្ញៀវកត្តិយសទាំងអស់ ហើយបានមានមតិស្វាគមន៍ ។ ក្នុងឱកាលដ៏ឧត្តុង្គឧត្តមនោះដែរ ឯកឧត្តម ស ខេង ឧបនាយករដ្ឋមន្ដ្រីមានប្រសាសន៍ថា៖ ថ្ងៃនេះជាថ្ងៃដ៏វិសេសវិសាល សម្រាប់ក្មួយៗនិស្សិតទាំងអស់បានចូលមកបន្តការសិក្សា ក្នុងសាកលវិទ្យាល័យ មានជ័យ ជានិស្សិតដំបូងបង្អស់ អាចនិយាយបានថា ជានិស្សិតជំនាន់ទី១ ដូចច្នេះសូមក្មួយៗនិស្សិតទាំងអស់ត្រូវខិតខំពុះពាររាល់ការលំបាកទាំងឡាយដើម្បីជ័យជំនះក្នុងការសិក្សាយកសញ្ញាបត្របរិញ្ញាបត្រឲ្យបានដើម្បីអនាគតខ្លួន និងក្រុមគ្រួសារ ពិសេសចូលរួមអភិវឌ្ឍន៍ប្រទេសជាតិ ហើយឯកឧត្តមបានប្រកាសបើបវេសនកាលចាប់ពីថ្ងៃនោះមក។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}