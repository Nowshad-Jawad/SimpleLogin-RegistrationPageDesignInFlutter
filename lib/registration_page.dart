
import 'package:flutter/material.dart';

class RegPage extends StatelessWidget {
  const RegPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bg2.jpg"),
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
              child:Text("Email : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.center,)
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
              child:Text("Password : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.center,)
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
              margin: EdgeInsets.only(top:415, left:20),
              child:Text("Confirm Password : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.center,)
          ),

          Container(
            margin: EdgeInsets.only(top:435, left:70),
            child: Divider(
              height: 10,
              color: Colors.grey,
              indent: 30,
              endIndent: 30,
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:445),
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
                          child: Text("SUBMIT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black,),textAlign: TextAlign.center,),
                        )
                      ],
                    ),
                  ),
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
                      Navigator.pop(context);
                    },
                    child:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Icon(Icons.cancel, color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Cancel", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black,),textAlign: TextAlign.center,),
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


