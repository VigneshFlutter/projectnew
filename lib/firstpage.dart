import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectnew/main.dart';
import 'package:projectnew/secondpage.dart';
import 'package:projectnew/thirdpage.dart';
import 'login_screen/login_screen.dart';


class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100,
                    height: 30,
                    child: Image.asset('assets/logo.png')),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      // child: Image.asset('assets/logo.png', height: 75, width: 125),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                        color: Colors.amber,
                        child: const Text("Logout",
                            style: TextStyle(
                                color: Color.fromARGB(255, 133, 29, 29))),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                            (Route<dynamic> route) => false,
                          );
                        }),
                  ],
                ),
                Container(
                  height: 20,
                  width: 50,
                  padding: EdgeInsets.all(20),
                  child: MaterialButton(
                      color: Colors.pink,
                      child: Text("Logout",
                          style: TextStyle(
                              color: Color.fromARGB(255, 133, 29, 29))),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {}),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            
            Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: Text(
                  'I AM A',
                  textAlign: TextAlign.center,
                )),
            Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: Text(
                  "PHARMACIST / MEDICAL PRACTITIONER / SPECIALIST / WHOLESALER",
                  textAlign: TextAlign.center,
                )),
            Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent enim nulla, mollis nec dui vitae, pulvinar sollicitudin augue. Suspendisse nec orci vitae felis pharetra vulputate. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: MaterialButton(
                  minWidth: 150,
                  height: 50,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return secondpage();
                      }),
                    );
                  },
                  color: Colors.orange[900],
                  child: Text(
                    'REGISTER',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: Text(
                  'PUBLIC / NURSE / TECHNICIAN / EQUIPMENT DISTRIBUTOR',
                  textAlign: TextAlign.center,
                )),
            Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent enim nulla, mollis nec dui vitae, pulvinar sollicitudin augue. Suspendisse nec orci vitae felis pharetra vulputate. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: MaterialButton(
                  minWidth: 150,
                  height: 50,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return thirdpage();
                      }),
                    );
                  },
                  color: Colors.orange[900],
                  child: Text(
                    'REGISTER',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
                child: MaterialButton(
                  minWidth: 150,
                  height: 50,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return NewLoginScreen();
                      }),
                    );
                  },
                  color: Colors.orange[900],
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
