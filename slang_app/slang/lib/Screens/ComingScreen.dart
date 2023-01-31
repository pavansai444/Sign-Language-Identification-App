import 'package:flutter/material.dart';




class cominghome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Features Coming.....'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
                    height:400,
                  padding: EdgeInsets.fromLTRB(60, 80, 60,80),

                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: NetworkImage('https://media.tenor.com/2nKSTDDekOgAAAAC/coding-kira.gif'),
                      fit: BoxFit.cover,
                    ),



                  ),

                ),





          Container(

            child:Text('''
            
COMING SOON!!    
This feature is still in developing process.
There will be a feature here in the near future.
We appreciate and thank you for your patience''',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize:15,

            ),

            ),
          )
        ],
      ),
    );
  }
}