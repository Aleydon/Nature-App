import 'package:flutter/material.dart';







class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/background.jpg'),
              ), 
          ),


          child: Center(
            child: Container(
              margin: EdgeInsets.all(30.0),


              child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
              
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                       decoration: InputDecoration(
                          icon: Icon(Icons.person,
                          color: Colors.white,
                          ),
                            labelText: 'Enter your username',
                            labelStyle: TextStyle(color: Colors.white54),
                          ),
                         validator: (value) {
                              if (value.isEmpty) {
                                  return 'please enter some email';
                              }
                              return null;
                          },
                      ),
                  ),  

                  
                  SizedBox(
                    height: 50,
                    child:  TextFormField(
                         decoration: InputDecoration(
                            labelText: 'Enter your password',
                            labelStyle: TextStyle(color: Colors.white54),
                            icon: Icon(Icons.vpn_key,
                            color: Colors.white,
                          ),
                        ),
                        obscureText: true,
                          validator: (value) {
                              if (value.isEmpty) {
                                  return 'please enter some password';
                              }
                              return null;
                          },
                      ),
                  ),
                    
                  
                    SizedBox(
                      width: 290,
                        child: RaisedButton(
                          child: Text('Register', style: TextStyle(color: Colors.black),),
                              color: Colors.amber,
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                    onPressed: () {},
                         ),
                    ),


                    SizedBox(
                      width: 290,
                      child: RaisedButton(
                          child: Text('Login', style: TextStyle(color: Colors.black),),
                              color: Colors.amber,
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/intro');
                                    },
                      ),
                    ),
                    
                ], 
              ),
              
          )
            ),
            
        ),
      )
    );
  }
}




