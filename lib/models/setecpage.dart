import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class SetecPage extends StatelessWidget {
  const SetecPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/setec.png'),
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
                    child: Text("វិទ្យាស្ថានស៊ីតិក ជាគ្រឹះស្ថានឧត្ដមសិក្សាឯកជន​ និងជា​វិទ្យាស្ថានដែល មាន​កម្មវិធីសិក្សាបង្រៀន​ដល់​និស្សិត​ឲ្យ​មាន​ ជំនាញ​ដែល​ក្រុមហ៊ុន​សព្វថ្ងៃ​​កំពុង​ចង់បាន ។ ក្រៅពី​រៀបចំ​កម្មវិធី​ដោយ​ផ្តោត​សំខាន់​លើ​ជំនាញវិទ្យាស្ថាន​ក៍មាន​បន្ថែម​នូវមុខវិជ្ជា ​មួយចំនួន​ដូចជា ទំនាក់ទំនង​សាធារណៈ ម៉ាឃីតធីង និង​គណនេយ្យ វិទ្យាស្ថាន​ក៏​ផ្តោត​ផងដែរ​លើ​មុខវិជ្ជា​ភាសាអង់គ្លេស​ ទាក់ទង ​នឹង​ជំនួញ។ជារួម​កម្មវិធីសិក្សារ​បស់​វិទ្យាស្ថាន​ស៊ី​តិក មិន​ត្រឹមតែ​បង្រៀន​មុខវិជ្ជា​ឯកទេស​នីមួយៗប៉ុណ្ណោះ​ទេ យើង​​នៅ​មាន​​ត្រៀម ​​ឲ្យ​និស្សិត​ចាប់យក​អាជីព​របស់គេ​នៅពេល​បញ្ចប់​ការសិក្សា​ទៀតផង ។ កម្មវិធីសិក្សា​របស់​វិទ្យាស្ថាន​រួមមានមេរៀន​ជា​ទ្រឹស្តីការ អនុវត្តផ្ទាល់ ហើយ​ក៏មាន​រៀបចំ​ឲ្យ​មាន​សិក្ខាសាលា និង​ការពិគ្រោះ​យោបល់ដើម្បី​ឲ្យ​និស្សិត​ជួបជុំរៀនសូត្រនិង​ ប្រាស្រ័យ ​ទាក់ទង​គ្នា​ជា​មួយ​នឹង​​អ្នក​​អាជីព​ជំនាញ​ឯកទេស ដែល​មកពី​ក្រុមហ៊ុន និង​អង្គការ ដែលមាន​ការទទួលស្គាល់។ អាសយដ្ឋានទំនាក់ទំនងរបស់វិទ្យាស្ថានស៊ីតិក អគារលេខ ៨៦A មហាវិថីសហព័ន្ធរុស្ស៊ី សង្កាត់ទឹកល្អក់១ ខណ្ឌទួលគោក រាជធានីភ្នំពេញ។ វិទ្យាស្ថានស៊ីតិកមានមហាវិទ្យាល័យចំនួន ២និងវិទ្យាស្ថានចំនួន ១ ដែលមានមុខជំនាញ៖ មហាវិទ្យាល័យគ្រប់គ្រង, មហាវិទ្យាល័យពាណិជ្ជកម្ម។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}