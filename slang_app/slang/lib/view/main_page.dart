import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app/Screens/MainHome.dart';
import 'package:login_app/view/home/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';


class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [Colors.indigo, Colors.black],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
    ),),
        child: SafeArea(

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  height: 200,
                  image:AssetImage('assets/image/hello-hand-sign-language-concept-free-vector-removebg-preview.png') ,
                ),
                SizedBox(
                  height: 15,
                ),
                Text('sign in as : ${user?.email}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),

                ),
                SizedBox(height: 20,),
                MaterialButton(
                  height: 50,
                  minWidth: 200,
                  onPressed: () {
                    FirebaseAuth.instance.signInAnonymously();
                    //GoogleSignIn().signIn();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => MainHome()));
                  },
                  color: Colors.blue,
                  child: const Text(
                    "sign In",
                    style:
                    TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                MaterialButton(
                  height: 50,
                  minWidth: 200,
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    //GoogleSignIn().signIn();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => HomeScreen()));
                  },
                  color: Colors.orangeAccent,
                  child: const Text(
                    "sign Out",
                    style:
                    TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                MaterialButton(
                  height: 50,
                  minWidth: 200,
                  onPressed: () async {
                    try {
                      var user = await FirebaseAuth.instance.currentUser;
                    user?.delete().then(
                          (value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => HomeScreen(),
                            ),
                          ),
                        );
                    } catch (e) {
                      print(e);
                    }
                  },
                  color: Colors.red,
                  child: const Text(
                    "delete Account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
