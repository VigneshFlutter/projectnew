

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'package:projectnew/firstpage.dart';

import 'dart:io';

import 'package:projectnew/main.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
  


}

class _secondpageState extends State<secondpage> {


  TextEditingController dateInput = TextEditingController();
   void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }




  File? image;

Future pickImage() async{
  try{
    final image = await ImagePicker().pickImage(source:ImageSource.gallery);

    if (image ==null)return;
    final imageTemp =File(image.path);
    setState( ()=> this.image = imageTemp);
      
    
  }on PlatformException catch(e){
    print('Failed to pick Image:$e');
  }
}



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
        title: Text('secondpage'),
      ),
      body: ListView(
      
        children:[

          Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 30,left: 30),
            child: Text('CREATE ACCOUNT - PHARMACIST / MEDICAL PRACTITIONER / SPECIALIST / WHOLESALER',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
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
          child: Text('Aadhar Card With Photo',style: TextStyle(fontWeight: FontWeight.w700)),
        ),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
              
              child: Container(
                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                decoration:BoxDecoration(border:Border.all(),
                borderRadius: BorderRadius.circular(5),    
                ),
                child: Row(
                  
                
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 60),
                      child: MaterialButton(
                        color: Color.fromARGB(255, 226, 232, 236),
                        child: const Text('Choose File'),
                        onPressed: (() {
                          pickImage();
                        }
                      ),
                      
                      ),
  
                    ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(height: 28,),
                      ),
                image !=null? Image.file(image!):Text('No File Selected '),
                  ],
                ),
              ),
            ),

            Padding(
           padding: const EdgeInsets.only(top: 20,bottom: 10,left: 30),
          child: Text('Pan Card With Photo',style: TextStyle(fontWeight: FontWeight.w700)),
        ),
            Padding(
               padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
              child: Container(

                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                decoration:BoxDecoration(border:Border.all(),
                borderRadius: BorderRadius.circular(5),    
                ),
                child: Row(
                
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 60),
                      child: MaterialButton(
                        color: Color.fromARGB(255, 226, 232, 236),
                        child: const Text('Choose File'),
                        onPressed: (() {
                          pickImage();
                        }
                      ),
                      
                      ),
  
                    ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(height: 28,),
                      ),
                image !=null? Image.file(image!):Text('No File Selected '),
                  ],
                ),
              ),
            ),

            Padding(
           padding: const EdgeInsets.only(top: 20,bottom: 10,left: 30),
          child: Text('Medical Registration Certificate',style: TextStyle(fontWeight: FontWeight.w700)),
        ),
            Padding(
               padding: const EdgeInsets.only(top: 5,bottom: 5,left: 30,right: 30),
              child: Container(

                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                decoration:BoxDecoration(border:Border.all(),
                borderRadius: BorderRadius.circular(5),    
                ),
                child: Row(
                
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 60),
                      child: MaterialButton(
                        color: Color.fromARGB(255, 226, 232, 236),
                        child: const Text('Choose File'),
                        onPressed: (() {
                          pickImage();
                        }
                      ),
                      
                      ),
  
                    ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: SizedBox(height: 28,),
                      ),
                image !=null? Image.file(image!):Text('No File Selected '),
                  ],
                ),
              ),
            ),
          
        
        
         Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 10,left: 30),
           child: Text('Name Of The Setup',style: TextStyle(fontWeight: FontWeight.w700)),
         ),
        Padding(
         padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'Name Of The Setup',
               labelStyle: TextStyle(fontSize: 12),
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 0,left: 30),
           child: Text('Year Of Registration',style: TextStyle(fontWeight: FontWeight.w700)),
         ),



         Container(
            padding: EdgeInsets.only(left:30,right: 30,top: 0,),

            height: MediaQuery.of(context).size.width / 3,
            child: Center(
                child: TextField(
              controller: dateInput,
              //editing controller of this TextField
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today), //icon of text field
                  labelText: "Enter Date" //label text of field
                  ),
              readOnly: true,
              //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2100));
 
                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('dd-MM-yyyy').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  setState(() {
                    dateInput.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {}
              },
            ))),
            

            
        
         Padding(
           padding: const EdgeInsets.only(top: 0,bottom: 10,left: 30),
           child: Text('Password',style: TextStyle(fontWeight: FontWeight.w700)),
         ),
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'Enter Your Password',
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
           child: Text('GST Number',style: TextStyle(fontWeight: FontWeight.w700)),
         ),
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 20,left: 30,right: 30),
          
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder() ,
              labelText: 'GST',
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

         
            
          
      ]),
      
      );
      
    

    
  }
}
