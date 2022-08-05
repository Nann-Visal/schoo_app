import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class CusPage extends StatelessWidget {
  const CusPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/cus.png'),
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
                    child: Text("សាកលវិទ្យាល័យឯកទេសនៃកម្ពុជាគឺជាសាកលវិទ្យាល័យឯកជនធំជាងគេនិងឈានមុខគេមួយនៅក្នុងប្រទេសកម្ពុជាដែលមានសាខាចំនួនប្រាំបួននៅទូទាំងប្រទេសបីសាខានៅក្នុងរាជធានីភ្នំពេញនិងសាខាចំនួន៦ផ្សេងទៀតស្ថិតនៅក្នុងខេត្តចំនួន៦ផ្សេងគ្នា។កំពង់ចាមសៀមរាបបាត់ដំបងបន្ទាយមានជ័យកំពតនិងកំពង់ធំ។សាកលវិទ្យាល័យនេះកំពុងផ្តល់ឱកាសដល់ប្រជាជនកម្ពុជាក្នុងការលើកកម្ពស់ឧត្តមភាពតាមរយៈការអប់រំរបស់សាកលនេះសម្រាប់អាជីពល្អដែលជាប្រភពធនធានមនុស្សប្រកបដោយគុណភាពរួមជាមួយឧបករណ៍និងបរិក្ខារទំនើប ៗ ។អាសយដ្ឋានទំនាក់ទំនង ទីតាំង ៖ អគារ F ផ្លូវលេខ ៦២ ភូមិទួលគោក សង្កាត់ទួលសង្កែ ខណ្ឌឬស្សីកែវ រាជធានីភ្នំពេញ។ សាកលវិទ្យាល័យឯកទេសនៃកម្ពុជា​ មានមហាវិទ្យាល័យចំនួន​ ៥ ដែលមានមុខជំនាញដូចជា​ : មហាវិទ្យាល័យវិស្វកម្ម, មហាវិទ្យាល័យវិទ្យាសាស្រ្តសង្គម និង នីតិសាស្រ្ត, មហាវិទ្យាល័យសិល្ប: មនុស្សសាស្រ្ត និង​ភាសា, មហាវិទ្យាល័យវិទ្យាសាស្រ្ត និង​ បច្ចេកវិទ្យា, មហាវិទ្យាល័យគ្រប់គ្រងពាណិជ្ចកម្ម និង សេដ្ឋកិច្ច។​ ",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}