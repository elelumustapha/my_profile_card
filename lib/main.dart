import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget contactCard(String textData, IconData newIcon) {
    return Card(
      child: ListTile(
        leading: Icon(
          newIcon,
          color: Colors.teal,
        ),
        title: Text(
          textData,
          style: TextStyle(color: Colors.teal[900]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/profile image.png'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Elelu Mustapha',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Cedarville Cursive',
                  ),
                ),
                Text(
                  'Software Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 10.0,
                  child: Divider(
                    color: Colors.white,
                    endIndent: 130,
                    indent: 130,
                  ),
                ),

                contactCard('Elelumustapha@gmail.com', Icons.mail),
                contactCard('+2348101884295', Icons.phone),
                contactCard('Flutter Developer', Icons.cases_rounded),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
