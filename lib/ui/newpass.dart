import 'package:flutter/material.dart';

class NewPass extends StatelessWidget {
  const NewPass({super.key});

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#FDE88D')),
      appBar: AppBar(
        backgroundColor:Color(hexColor('#819F84')),
        title:
            Text("Reset your password", style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Reset Password",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Create a new password",
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
                        decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter new password",
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
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
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Container(
                  padding: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(hexColor('#FDA8A5'))),
                    color: Color(hexColor('#FDA8A5')),
                  ),
                  child:  Center(
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.pop(context);
                    },
                        child: Text(
                      'SUBMIT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                          ),
                    ),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//                Navigator.pop(context);
