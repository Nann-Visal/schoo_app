import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:school_app/screens/signin_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                logoWidgetHomeScreen('asset/images/school_logo.png'),
                const SizedBox(
                  height: 30.0,
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
                    child: Text("ពួកយើងគឺជានិស្សិតមកពីសាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ​ នៅក្នុងមហាវិទ្យាល័យវិស្វកម្មបច្ចេកវិទ្យាព័ត៍មាន។​ ហើយនេះគឺជាកម្មវិធីដំបូងរបស់ពួកយើង ដែល​បង្កើតលើងក្នុងគោលបំណងជួយសម្រួលដល់ការលំបាកផ្សេងៗដល់យុវសិស្សដែលស្វែងរកព័ត៍មានរបស់​សាកលវិទ្យាល័យផ្សេងៗសម្រាប់បន្តការសិក្សាជាពិសេសសម្រាប់សិស្សដែលនៅតាមបណ្ដាខេត្តនៅដំបន់ឆ្ងាយៗដាច់ស្រយាល​ ហើយមានបំណងមកសិក្សានៅទីរាជធានីភ្នំពេញឬតាមបណ្ដាខេត្តនានាក្ដី​ ដែលខ្លួនមិនស្គាល់។",
                     style: TextStyle(fontSize:25))
                  ),
                ),
                signOutOptionButton(
                  context,
                  true,
                  (){
                    FirebaseAuth.instance.signOut().then((value) {
                      debugPrint("Signed Out");
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context) => const SignInScreen()));
                    });
                  })
              ],
            ),
          ))),
    );
  }
}