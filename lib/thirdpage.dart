import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class thirdpage extends StatefulWidget {
  const thirdpage({Key? key}) : super(key: key);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {

    DateTime _dateTime = DateTime.now();
  

  void _showDatePicker(){
    showDatePicker(context: context,
     initialDate: DateTime.now(), 
     firstDate: DateTime(1800), 
     lastDate: DateTime(2040),
     ).then((value) {
        setState(() {
          _dateTime = value!;
          
        });
     });
  }


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
    
      appBar: AppBar(
        title: Text('thirdpage'),
      ),
      body: ListView(
       
       children: [

         Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 30,left: 30),
            child: Text('CREATE ACCOUNT - PUBLIC / NURSE / TECHNICIAN / EQUIPMENT DISTRIBUTOR',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
          ),

         Padding(
           padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
            child: Text('Name As Per ID Proof',style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: 'Name',
               labelStyle: TextStyle(fontSize: 12),
              )
            ),
          ),


                  Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
           child: Text('Date Of Birth',style: TextStyle(fontWeight: FontWeight.w700)),
         ),

            Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
              child: Container(
                 padding: const EdgeInsets.only(top: 0,bottom: 0,left: 5,right: 5),
                decoration:BoxDecoration(border:Border.all(),
                borderRadius: BorderRadius.circular(5),  ),

                
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: MaterialButton(
           onPressed: _showDatePicker,
        child: Text('choose Date'),
        color: Color.fromARGB(255, 226, 232, 236),
        ),
                   ),
    
           Padding(
             padding: const EdgeInsets.only(left: 10),
             child: Container(child: Text(_dateTime.toString()),
             ),
           ),   
                 ],
           ),
              ),
            ),


            

        
        Padding(
         padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
          child: Text('Mobile Number',style: TextStyle(fontWeight: FontWeight.w700)),
        ),
        
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'Mobile Number',
               labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ),
        
        Padding(
           padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
          child: Text('Email',style: TextStyle(fontWeight: FontWeight.w700)),
        ),
        Padding(
         padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'Email',
               labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ),
        
        Padding(
           padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
          child: Text('Address',style: TextStyle(fontWeight: FontWeight.w700)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            
              child: TextField(
                decoration: InputDecoration(border:OutlineInputBorder() ,
                labelText: 'Address',
                 labelStyle: TextStyle(fontSize: 12),
                ),
              ),
            
          ),
        
        Padding(
           padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
          child: Text('Pincode',style: TextStyle(fontWeight: FontWeight.w700)),
        ),
        Padding(
         padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            child: TextField(

  
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'Pincode',
               labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ),
        
         Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
           child: Text('Referal Code',style: TextStyle(fontWeight: FontWeight.w700)),
         ),
        Padding(
         padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'Referal Code',
               labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
           child: Text('Password',style: TextStyle(fontWeight: FontWeight.w700)),
         ),
        Padding(
         padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'Password',
               labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ),
         Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 40,left: 30,right: 30),
            child: MaterialButton(
                    minWidth:150 ,
                    height: 60,
                    onPressed: () {

                    },
                    color: Colors.orange[900],
                    child: Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
          ),
           

           

        
          ]
          ),
         );
   



    
  }
}
