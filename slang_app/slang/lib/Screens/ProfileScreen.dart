import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app/Screens/About.dart';


class Profile extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true ,
      ),
      body:
      Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/image/WhatsApp Image 2022-10-31 at 01.08.28.jpeg'),
              fit:BoxFit.fill),
            ),
            ),
          ),
          Expanded(

            flex: 5 ,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1,0.5,0.7,0.9],
                  colors: [
                    Color(0XFF283593),
                    Color(0XFF303F9F),
                    Color(0XFF2962FF),
                    Color(0XFF2979FF),
                  ],
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0,),
                  Center(
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60 ,
                        child: Icon(
                          Icons.account_circle ,
                          size: 110.0,
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height:30.0,
                        width:230.0,
                        decoration: BoxDecoration(

                          borderRadius:BorderRadius.circular(20.0),
                          color:Colors.white54,
                        ),
                        child: Center(
                          child: Text(
                            '${user?.email}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0 ,
                              fontSize: 10.0 ,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),

                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        height:30.0,
                        width:230.0,
                        decoration: BoxDecoration(

                          borderRadius:BorderRadius.circular(20.0),
                          color:Colors.white54,
                        ),
                        child: Center(
                          child: Text(
                            'PROFILE SETTINGS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0 ,
                              fontSize: 10.0 ,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),

                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        height:30.0,
                        width:230.0,
                        decoration: BoxDecoration(

                          borderRadius:BorderRadius.circular(20.0),
                          color:Colors.white54,
                        ),
                        child: Center(
                          child: Text(
                            'REPORT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0 ,
                              fontSize: 10.0 ,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),

                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        height:30.0,
                        width:230.0,
                        decoration: BoxDecoration(

                          borderRadius:BorderRadius.circular(20.0),
                          color:Colors.white54,
                        ),
                        child: Center(
                          child: Text(
                            'TRY NEW FEATURES',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0 ,
                              fontSize: 10.0 ,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),

                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        height:30.0,
                        width:230.0,
                        decoration: BoxDecoration(

                          borderRadius:BorderRadius.circular(20.0),
                          color:Colors.white54,
                        ),
                        child: Center(
                          child: Text(
                            'CONTACT HELP AND SUPPORT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0 ,
                              fontSize: 10.0 ,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),

                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        decoration: BoxDecoration(

                          borderRadius:BorderRadius.circular(20.0),
                          color:Colors.white54,
                        ),
                        height:30.0,
                        width:230,
                       // color: Colors.white54,

                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder:((context) => about())
                            ),);
                          },
                          icon: Icon(
                            Icons.info,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          label: Text(
                              ' About'

                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
