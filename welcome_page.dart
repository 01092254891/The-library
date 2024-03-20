import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _HomePageState();
}

class _HomePageState extends State<WelcomePage> {
  String? _savedName;
  final TextEditingController _nameController = TextEditingController();

  // Retrieve the saved name if it exists
  @override
  void initState() {
    super.initState();
    _retrieveName();
  }

  Future<void> _retrieveName() async {
    final prefs = await SharedPreferences.getInstance();

    // Check where the name is saved before or not
    if (!prefs.containsKey('name')) {
      return;
    }

    setState(() {
      _savedName = prefs.getString('name');
    });
  }

  // this function will save the name to the shared preferences
  Future<void> _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _nameController.text);
  }

  // this function will clear the name from the shared preferences
  Future<void> _clearName() async {
    final prefs = await SharedPreferences.getInstance();
    // Check where the name is saved before or not
    if (!prefs.containsKey('name')) {
      return;
    }

    await prefs.remove('name');
    setState(() {
      _savedName = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Welcome to your Library'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(25),
            child: _savedName == null
                ? Column(
                    children: [
                      TextField(
                        controller: _nameController,
                        decoration:
                            const InputDecoration(labelText: 'Your Name'),
                      ),
                      Row(children: [
                        ElevatedButton(
                            onPressed: _saveName,
                            child: const Text('Save your name')),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: const Text('Login')),
                        Spacer(
                          flex: 3,
                        )
                      ])
                    ],
                  )
                : Column(children: [
                    Text(
                      'Hello $_savedName',
                      style: const TextStyle(fontSize: 50),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: _clearName, child: const Text('Reset')),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: const Text('Login')),
                        Spacer(
                          flex: 3,
                        )
                      ],
                    )
                  ])));
  }
}
