import 'package:flutter/material.dart';
class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'), fit: BoxFit.cover
        ),
      ),
       child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Stack(
           children: [
             Container(
               padding: EdgeInsets.only(left: 35, top: 130),
               child: Text(
                 'Brain & Gain',
                 style: TextStyle(color: Colors.white, fontSize: 33),
               ),
             ),
             SingleChildScrollView(
               child: Container(
                 padding: EdgeInsets.only(
                   top: MediaQuery.of(context).size.height * 0.5),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ElevatedButton(
                         onPressed: (){
                           Navigator.pushNamed(context, 'login');
                         }, child: Text(
                              'Get Started!',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   decoration: TextDecoration.none,
                   color: Colors.amberAccent,
                   fontSize: 18,
                 ),
                          ),
                       style: ButtonStyle(),
                       ),

                   ],
                 ),
               ),
             ),
           ],
         ),
        ),
      );
  }
}
