import 'package:flutter/material.dart';
import 'package:login_app/Screens/ComingScreen.dart';
import 'package:login_app/Screens/Information.dart';
import 'package:login_app/Screens/ProfileScreen.dart';
import 'package:login_app/Screens/solutionscreen.dart';

import 'appbanner.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);
  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  late final PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final urlImages = [
    'https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1583121274602-3e2820c69888?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
    'https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        currentIndex = index;
      });
      // Container
    }

    return Scaffold(
      //backgroundColor: Colors.cyan.shade50,
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        //foregroundColor: Colors.black,
        backgroundColor: Colors.indigo[900],
        toolbarOpacity: 0.9,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: const Text(
                      '''
     
     
     Welcome
          Admin!''',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (ctx) => Profile()),
                      );
                    },
                    icon: const Icon(
                      Icons.account_circle,
                      size: 80.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    //'Trivia on Sign language',
                    '',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        //margin: const EdgeInsets.symmetric(vertical: 16.0),
                        height: 230,

                        child: PageView.builder(
                          controller: PageController(viewportFraction: 0.88),
                          itemCount: appBannerList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),

                                image: DecorationImage(
                                  image: AssetImage(
                                      appBannerList[index].thumbnailUrl),
                                  fit: BoxFit.fill,
                                ), // DecorationImage
                              ), // BoxDecoration
                              child: DefaultTextStyle(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ), // BoxDecoration
                                    ), // Container
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    label: Text('click'),
                    icon: Icon(Icons.menu_book_rounded),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blue.shade600,
                backgroundBlendMode: BlendMode.colorDodge,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.fromLTRB(1.0, 50.0, 1.0, 50.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/free-vector/red-live-neon-sign-vector_53876-61394.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.lightBlueAccent,
                            blurRadius: 20.0,
                            offset: Offset(5, 5)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '            Live',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blue.shade600,
                backgroundBlendMode: BlendMode.colorDodge,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.fromLTRB(1.0, 60.0, 1.0, 60.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/vector-premium/te-amamos-lenguaje-mano_88653-534.jpg?w=740'),
                        fit: BoxFit.fill,
                      ),
                      
                      border: Border.all(
                        color: Colors.black,
                      ),
                      
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.lightBlueAccent,
                            blurRadius: 20.0,
                            offset: Offset(5, 5)),
                      ],
                    ),
                    
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text(
                        '     Sign Detection',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Column
            //floatingActionButton:const FloatingActionButton(
            // child: Text('next'),
            //onPressed: null,
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue,
          primaryColor: Colors.white,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey)),
        ),
        child: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            currentIndex: currentIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_outlined,
                  size: 33.0,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Trivia',
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    icon: Icon(
                      Icons.menu_book_rounded,
                      size: 33.0,
                    )),
              ),
              BottomNavigationBarItem(
                label: 'Camera',
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      size: 33.0,
                    )),
              ),
              BottomNavigationBarItem(
                label: 'More',
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cominghome()));
                    },
                    icon: Icon(
                      Icons.more_horiz_outlined,
                      size: 33.0,
                    )),
              ),
            ]),
      ),
    );
  }
}
