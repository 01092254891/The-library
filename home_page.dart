import 'package:flutter/material.dart';

import 'k_alom/views/notes_view.dart';
import 'k_edara/views/notes_view.dart';
import 'k_ektsad/test_view/views/book_view.dart';
import 'k_hasb/views/notes_view.dart';
import 'k_kanon/views/notes_view.dart';
import 'm_ektsad/views/notes_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> sd = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/logo.jpg")),
        backgroundColor: Colors.purple,
        title: Text(
            style: TextStyle(fontSize: 20, color: Colors.white),
            'المعهد العالي للحاسبات والمعلومات'),
      ),
      body: Column(
        children: [
          Spacer(
            flex: 4,
          ),
          Row(children: [
            Spacer(flex: 1),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => BookView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("كتب الاقتصاد")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text("مراجع الاقتصاد")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => EdaraView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("كتب الإدارة")),
            Spacer(),
          ]),
          Spacer(flex: 1),
          Row(children: [
            Spacer(flex: 1),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("مراجع الاداره")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("كتب التجارة")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text("مراجع التجارة")),
            Spacer(),
          ]),
          Spacer(flex: 1),
          Row(children: [
            Spacer(flex: 1),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("مراجع المحاسبة")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => KanonView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text("كتب القانون")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("مراجع أعمال")),
            Spacer(),
          ]),
          Spacer(flex: 1),
          Row(children: [
            Spacer(flex: 1),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AlomView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("كتب العلوم الاجتماعية")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AlomView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text("مراجع كتب العلوم الاجتماعية")),
            Spacer(),
          ]),
          Spacer(flex: 1),
          Row(children: [
            Spacer(flex: 1),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => KanonView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("مراجع في القاتون")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text("مراجع في الرياضيـات والإحصاء")),
            Spacer(),
          ]),
          Spacer(flex: 1),
          Row(children: [
            Spacer(flex: 1),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HasbView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("مراجع  الحاسب الآلي")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HasbView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("كتب الحاسب الآلي")),
            Spacer(),
          ]),
          Spacer(flex: 1),
          Row(children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("مراجع الرياضيات")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text("ثقافة عامة")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NotesView()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo, onPrimary: Colors.white),
                child: Text("مشاريع تخرج")),
            Spacer(),
          ]),
          Spacer(
            flex: 4,
          ),
          Container(
            height: 250,
            width: 380,
            child: Image(image: AssetImage("assets/logo.jpg")),
          ),
        ],
      ),
    );
  }
}
