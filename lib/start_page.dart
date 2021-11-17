
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amberAccent,
      /*appBar: AppBar(
        backgroundColor: Colors.red,
        leading:Icon(Icons.menu),
        title:Text("APARTMENT-OR"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),*/
      body:Stack(
        children: [

          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bg10.jpg"),
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
            margin: EdgeInsets.only(top:200),
            height:400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Text("Your \"MENTOR\" for APARTMENT HUNTING! ", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color:Colors.black,),textAlign: TextAlign.center,)

                ),

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
                      Navigator.pushReplacementNamed(context, '/login');
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
                  margin:EdgeInsets.only(top:30),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5)
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
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
                          child: Text("REGISTRATION", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black,),textAlign: TextAlign.center,),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),






        ],
      ),
    );
  }
}
