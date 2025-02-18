import 'package:flutter/material.dart';
import 'Activities/ActivityStates.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivityState(),
    );
  }
}

class HomeActivityState extends StatefulWidget {
  @override
  HomeActivity createState() => HomeActivity();
}

class HomeActivity extends State<HomeActivityState> {
  
  TextEditingController tController = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Green")),

      body: Center(
        child: Column(
          
          children: [
            TextField(
              controller: tController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Input your text")
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RedActivityState(inpText : tController.text)),
                );
              },
              child: Text("Go to RedActivity"),
            ),
          ],
        ),
      ),
    );
  }
}
