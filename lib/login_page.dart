import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [

          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bg6.jpg"),
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top:80,right:15),
            alignment: Alignment.topRight,
            child: Icon(Icons.menu, size: 30,),
          ),

          Container(
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),

          Container(
              margin: EdgeInsets.only(top:230, left:20),
              child:Text("Email : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),textAlign: TextAlign.center,)
          ),

          Container(
            margin: EdgeInsets.only(top:250, left:70),
            child: Divider(
              height: 10,
              color: Colors.grey,
              indent: 30,
              endIndent: 30,
            ),
          ),

          Container(
              margin: EdgeInsets.only(top:320, left:20),
              child:Text("Password : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),textAlign: TextAlign.center,)
          ),

          Container(
            margin: EdgeInsets.only(top:340, left:70),
            child: Divider(
              height: 10,
              color: Colors.grey,
              indent: 30,
              endIndent: 30,
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:280),
            alignment: Alignment.center,
            height:400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5)
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        padding: EdgeInsets.symmetric(horizontal: 57)
                    ),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/inside');
                    },
                    child:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.login, color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("LOGIN", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black,),textAlign: TextAlign.center,),
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top:20),
                  child: Text("Don't have an account? ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black,),textAlign: TextAlign.center,),
                ),

                Container(
                  margin: EdgeInsets.only(top:20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5)
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        padding: EdgeInsets.symmetric(horizontal: 57)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/registration');
                    },
                    child:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.app_registration, color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("GET REGISTERED", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black,),textAlign: TextAlign.center,),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),






        ],
      ),
    );
  }
}