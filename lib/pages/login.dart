import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

//underscore makes the class/field private. helpful for security  
class _LoginPageState extends State<LoginPage> {
  @override
  String name="";
  bool flag=false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async
  {
    if(_formKey.currentState.validate()){
        setState(() {
                flag=true;                    
                   });

          await Future.delayed(Duration(seconds: 1));
          await Navigator.pushNamed(context, MyRoutes.homeRoute);
            
            setState(() {
          flag=false;                    
                });
    }
  }

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login_bg.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Container(
              //scroll view is a must for diff devies to function smoothly
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Center(
                          child: Image.asset('assets/images/icon.png',
                              height: 180, width: 200, fit: BoxFit.fitWidth),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 0.5),
                        child: Center(
                          child: Text(
                            "Welcome $name",
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(top:10,bottom: 0.5),
                        child: Center(
                          child: Text(
                            "to",
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 30),
                        child: Center(
                          child: Text(
                            "Scoop a Cone",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.cookie().fontFamily),
                          ),
                        ),
                      ),
                      Padding(
                        //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              labelText: 'Name',
                              hintText: 'Full Name'),
                              validator: (value){
                                if(value.isEmpty)
                                   return "Username cannot be empty";
                                else return null;
                              },
                              onChanged: (value)
                              {
                                name=value;
                                setState(() { });
                              },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50.0, right: 50.0, top: 15, bottom: 0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              labelText: 'Password',
                              hintText: 'Enter secure password of length minimum 6'),
                               validator: (value){
                                if(value.isEmpty)
                                   return "Password cannot be empty";
                                else if(value.length<6)
                                  return "Password length cannot be less than 6";
                                else return null;
                              },
                        ),

                      ),
                      TextButton(
                        onPressed: () {
                          //TODO FORGOT PASSWORD SCREEN GOES HERE
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(flag?70:10),
                        color: Colors.black,
                        child:
                      InkWell(
                         onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 40,
                          width: flag? 40:68,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(flag?60:8)
                              ),
                       
                            child: flag? Icon(Icons.done, color: Colors.white):Text(
                              'Login',
                              style: TextStyle(color: Colors.white, fontSize: 16),

                            ),
                          ),
                      ),
                      ),
                      
                      SizedBox(
                        height: 130,
                      ),
                      Text(
                        'New User? Create Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
