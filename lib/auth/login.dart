import 'package:edurecast/auth/register.dart';
import 'package:edurecast/const/color.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:ColorsConsts.yellow,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:100,),
                Container(child: Image.asset('assets/login.png',fit: BoxFit.contain,)),
            SizedBox(height: 60,),
                Container(alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: 40,left: 26),
                  child: Text('Edurecast',style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,fontSize: 30),)),
                 Container(
                margin: const EdgeInsets.only(
              top: 10,
            ),
            height: MediaQuery.of(context).size.height * .525,
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
                      'Welcome Back',
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
                  'Please Enter your Credential proceed',  style: TextStyle(
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
                  decoration: InputDecoration(
                    hintText: "Enter Email/Mobile Number",
                    hintStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    border: UnderlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    border: UnderlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:190,top: 15),
                child: Text('Forgot Password ?',style: TextStyle(color: Colors.grey,fontSize: 12,
                fontWeight: FontWeight.bold
                ),),
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
                        "Continue",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.only(left:38.0,top: 10),
           child: Row(
             children: [
               Text('I dont have an account?'),
               InkWell(onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()));
                       },
                 child: Text(' Create New',style: TextStyle(fontWeight: FontWeight.bold),)),
             ],
           ),
         )
          ],
        ),
        ),
        
          ]),
      ));
  }
}