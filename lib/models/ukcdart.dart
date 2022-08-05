import 'package:flutter/material.dart';
import 'package:school_app/screens/setting_screen.dart';
import 'package:school_app/utils/color_util.dart';
import 'package:school_app/widgets/reusable_widget.dart';

class UkcPage extends StatelessWidget {
  const UkcPage({Key? key}) : super(key: key);

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
                  child:  logoWidgetPublicSchoolScreen('asset/images/ukc.png'),
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
                    child: Text("លោក លោកស្រី ប្អូនៗដែលមានបំណងសិក្សាជំនាញផ្នែកទន្តគិលានុបដ្ឋាក(ធ្មេញ)  នៅសាកលវិទ្យាល័យកំពង់ចាមក្រោយបញ្ចប់ការសិក្សាជាស្ថាពរ    ទទួលបាននូវសញ្ញាបត្រចេញដោយក្រសួងសុខាភិបាល លោក លោកស្រី  និងប្អូនៗទាំងអស់ មានសិទ្ធិប្រទ្បងចូលក្របខ័ណ្ឌរដ្ឋ   ដើម្បីបម្រើការងារ តាមការជ្រើសរើសរបស់ក្រសួងសុខាភិបាល ឬអាចបើកបន្ទប់ថែទាំធ្មេញ ស្របតាមច្បាប់ដែលបានកំណត់។សាកលវិទ្យាល័យកំពង់ចាម មានសាស្រ្តាចារ្យ    ទន្តបណ្ឌិតឯកទេស  ទន្តបណ្ឌិតជំនាញ       ដែលមានបទពិសោធន៍ជាយូរឆ្នាំ ក្នុងការប្រតិបត្តិសកម្មភាពជាក់ស្តែង       ដើម្បីបង្ហាត់ បង្ហាញ បង្រៀន  ដល់និស្សិតអោយមានជំនាញពិតប្រាកដ។",
                     style: TextStyle(fontSize: 20))
                  ),
                )
              ],
            ),
          ))),
    );
  }
}