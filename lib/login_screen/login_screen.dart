import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectnew/firstpage.dart';
import 'package:projectnew/login.dart';

import '../authentication.dart'; 

final auth = Authentication();


class NewLoginScreen extends StatefulWidget {
  const NewLoginScreen({Key? key}) : super(key: key);

  @override
  State<NewLoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<NewLoginScreen> {
   TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  bool _isVisible = false;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 10),
                  child: Text('Login ',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40),),
                ),
               
                Padding(
                   padding: const EdgeInsets.only(left: 20,bottom: 10,top: 10),
                  child: Text('Email',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 10,top: 10,right: 20),
                  child: TextField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your email',
                     )),
                ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,bottom: 10,top: 10,right: 20),
                     
                       child: Text('Password',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                     ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 10,top: 10,right: 20),
                
                  child: TextField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(),
                       hintText: 'Enter your password',
                     )),
                ),
               
                //  Column(
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //    children: <Widget>[
                    
                //     new RaisedButton(
                //       child: new Text('click'),
                //       onPressed: () {
                       
                //      }),
                //    ],
                //  )

                 Padding(
                   padding: const EdgeInsets.only(right: 20,top: 10,bottom: 20),
                   child: Column(
 
  crossAxisAlignment: CrossAxisAlignment.end,
  
  
  children: <Widget>[
   
    new RaisedButton(
      child: new Text("Login",style: TextStyle(color: Colors.white),),
      color: Colors.blue,
      onPressed: (){
         Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }),
                    );
      },
    ),
    Container(height: 0.0),//SizedBox(height: 20.0),
   
   
  ],
),
                 ),
               
                
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                        
              // Container(
              // child: Center(
              //       child: RichText(
              //     text: TextSpan(
              //       children: [
              //         TextSpan(
              //             text: " Register ",
              //             style: TextStyle(
              //                 color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 18),
              //             recognizer: new TapGestureRecognizer()
              //               ..onTap = () => {
              //                     Navigator.push(
              //                       context,
              //                       MaterialPageRoute(
              //                           builder: (context) => const LoginScreen()),
              //                     )
              //                   }),
              //       ],
              //     ),
              //   ))),
                         
                        ],
                        
                      ),
                     
                  
                    


                
              ],
            ),
          
        ),
      ),
    );
  }
}
