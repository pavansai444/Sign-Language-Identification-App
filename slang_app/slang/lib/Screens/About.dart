import 'package:flutter/material.dart';
import 'package:login_app/view/widgets/background_screen.dart';
import 'Name.dart';

class about extends StatelessWidget {
  List<Name> names = [
    Name(name: '  Balaga Pavan Sai       ', email: 'b_psai@cs.iitr.ac.in'),
    Name(name: '  NagaSamudram Karthik  ', email: 'n_karthik@cs.iitr.ac.in'),
    Name(name: 'Taviti Venkata Manikanta ', email: 't_vmanikanta@cs.iitr.ac.in'),
    Name(name: '  Kanuru Mohith Reddy    ', email: 'k_mkreddy@cs.iitr.ac.in'),
    Name(name: '   Challa Vishwanath     ', email: 'c_vishwanath@cs.iitr.ac.in'),
  ];
  Widget namecard(name) {
    return Card(
      margin: EdgeInsets.all(20),
      color: Colors.blue[200],
     elevation: 2,
     shadowColor: Colors.black,
     
     
      child:Container(
        
        
        padding: EdgeInsets.all(5),
        child: Column(
        
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name.name,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                name.email,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ]),
      ),
      );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 255, 250),
      appBar: AppBar(
        title: Text('Information'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
        
        body: Center(
          child: Card(
        elevation: 30,
        shadowColor: Colors.black,
        color: Colors.white70,

            
            
          
            child: SizedBox(
              height: 550,
              width: 300,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
               children: 
               
               names.map((name) =>namecard(name)).toList(),
              ),
            ),
          ),
        ),
        );
  }
}
