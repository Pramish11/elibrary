import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
        title: const Text('Brain&Gain'),
       ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  margin: EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          hintText: "search for books...",
                          hintStyle: TextStyle(color: Colors.green),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      )
                    ],
                  ),
                )
              ]
            ),
            ),
          ),

        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              IconButton(
                color: Colors.white ,
                onPressed: () {
                  Navigator.pushNamed(context, 'homepage');
                },
                icon: Icon(Icons.home),
              ),
              IconButton(
                color: Colors.white,
                  onPressed: (){},
                icon: Icon(Icons.library_books),
              ),
              IconButton(
                color: Colors.white,
                onPressed: (){},
                icon: Icon(Icons.history),
              ),
              IconButton(
                color: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(context, 'profile');
                },
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
    ),

    );
  }
}


