
import 'package:edurecast/auth/register.dart';
import 'package:edurecast/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgot.dart';
class FormPage extends StatefulWidget {
  const FormPage({ Key? key }) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
   bool agree = false;
    List<String> _locations = ['Male', 'Female', 'Others', ]; // Option 2
  String? _selectedLocation; 
    void _doSomething() {
    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPassword()));
                       }// Do something
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:ColorsConsts.yellow,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:70,),
                Image.asset('assets/reg.png',fit: BoxFit.cover,),
                Container(alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: 20,left: 26),
                  child: Text('Edurecast',style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,fontSize: 30),)),
                 Container(
                margin: const EdgeInsets.only(
              top: 10,
            ),
            height: MediaQuery.of(context).size.height * .62,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(   color: Colors.white,
            
              borderRadius: BorderRadius.circular(38),
             ),
            child: Column(children: [
               SizedBox(
                height: 50.0,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 28.0,left: 25
                  ),
                  child: Container(alignment: Alignment.topLeft,
                    child: Text(
                      'Fill Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15,left: 25),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                  'Please fill your details to get started ',  style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                  Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "School/College Name",
                    hintStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    border: UnderlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.grey),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " College/School ID",
                    hintStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    border: UnderlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Row(//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                SizedBox(
                  width: 165,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Date of Birth",
                        hintStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                        border: UnderlineInputBorder(),
                      ),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  width: 165,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 60,bottom: 13
                     ),
                    // child: TextFormField(
                    //   decoration: InputDecoration(
                    //     hintText: "Gender",
                    //     hintStyle: TextStyle(
                    //         fontSize: 13, fontWeight: FontWeight.bold),
                    //     border: UnderlineInputBorder(),
                    //   ),
                    //   style: TextStyle(color: Colors.grey),
                    // ),
                    child: DropdownButton(
                      underline: Container(),
                         hint: Text('Gender',  style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue as String?;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
                  ),
                ),
              ]),
              Row(
          children: [
            Material(
              child: Checkbox(checkColor: Colors.black,
              focusColor: ColorsConsts.yellow,
              activeColor: ColorsConsts.yellow,
                value: agree,
                onChanged: (value) {
                  setState(() {
                    agree = value ?? false;
                  });
                },
              ),
            ),
            Text(
              'I have read and accept terms and conditions',
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
              Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
                          // side: BorderSide(color: ColorsConsts.lightcyan, width: 2)
                          ),
                      textColor: Colors.white,
                   
                      color: ColorsConsts.yellow,
                           onPressed: agree ? _doSomething : null, 
      
                      child: Text(
                        "Continue",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ),
         InkWell(onTap: (){
           Navigator.pop(context);
         },
           child: Padding(
             padding: const EdgeInsets.all(18.0),
             child: Text('Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
           ),
         )
          ],
        ),
        ),
        
          ])));
     // ));
  }
}