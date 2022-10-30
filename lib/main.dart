
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: ResetPass()));
}

class ResetPass extends StatelessWidget {
  ResetPass({super.key});
  final controller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#FDE88D')),
      appBar: AppBar(
        backgroundColor: Color(hexColor('#819F84')),
        title: const Text("Reset your password",
            style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('images/img.png'),
                ),
                const Text(
                  "Forgot your Password",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Enter your email id to\nretrieve your password",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.white10),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextField(
                        // controller: controller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                        ),),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      final email = controller.text;

                      createUser(email: email);
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(13.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(hexColor('#FDA8A5')),
                            border:
                            Border.all(color: Color(hexColor('#FDA8A5')))),

                        child: const Text(
                          "ENTER",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  hexColor(String colorhexcode) {
    String colornew = '0xff$colorhexcode';
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  Future createUser({required String email}) async{
    final docUser=FirebaseFirestore.instance.collection('users').doc(' my-id');
final json= {


    'email':email,
    };


    await docUser.set(json);
  }
}
