import 'package:edurecast/auth/register.dart';
import 'package:edurecast/const/color.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class OTP extends StatefulWidget {
  const OTP({ Key? key }) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:ColorsConsts.yellow,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:70,),
                Container(child: Image.asset('assets/fill.png',fit: BoxFit.contain,)),
            SizedBox(height: 20,),
                Container(alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: 40,left: 26),
                  child: Text('Edurecast',style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,fontSize: 30),)),
                 Container(
                margin: const EdgeInsets.only(
              top: 20,
            ),
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(   color: Colors.white,
            
              borderRadius: BorderRadius.circular(38),
             ),
            child: Column(children: [
               SizedBox(
                height: 60.0,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 18.0,left: 25
                  ),
                  child: Container(alignment: Alignment.topLeft,
                    child: Text(
                      'OTP Verification',
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
                  'Please enter password you have received',  style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
             
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: PinCodeTextField(
                   // controller:otpcont,
                    
                    keyboardType: TextInputType.number,
            length: 5,
            obscureText: true,
            animationType: AnimationType.slide,
            pinTheme: PinTheme(activeColor: ColorsConsts.yellow,
              shape: PinCodeFieldShape.underline,
              selectedFillColor: ColorsConsts.yellow,
              selectedColor: ColorsConsts.yellow,
              inactiveColor: ColorsConsts.yellow,
              disabledColor: ColorsConsts.yellow,
              
              borderRadius: BorderRadius.circular(5),
              inactiveFillColor: Colors.transparent,
              activeFillColor: Colors.white,
              
            ),
                  
                
            animationDuration: Duration(milliseconds: 300),
            enableActiveFill: true,
            textStyle: TextStyle(color: ColorsConsts.yellow),
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              setState(() {
              //  currentText = value;
              });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              return true;
            }, appContext:context , 
                  validator:( value)
                    {
                   if (value!.isEmpty||value== 5)
                return 'Please Enter 5 digit OTP Pin';
              else
             return null;
                    },  
                  ),
                ),
                  Padding(
                padding: const EdgeInsets.only(top: 21.0),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                      color: ColorsConsts.yellow,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      
                      },
                      shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
                          // side: BorderSide(color: ColorsConsts.lightcyan, width: 2)
                          ),
                      textColor: Colors.white,
                      child: Text(
                        "Verify OTP",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                  ),
              SizedBox(height: 20,),
               InkWell(onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()));
                       },
                 child: Text('Back',style: TextStyle(fontWeight: FontWeight.bold),)),
                   // appContext: null,
          ]))],
           ),
         )
     
        )
        ;
        
         
  }
}