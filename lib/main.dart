import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
        home: Scaffold(
      //   appBar: AppBar(
      //
      //   ),
        body: MyHomePage(),
      ),
    );

  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    PageController controller=PageController(initialPage: 0);
    List<Widget>reels=[
      Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      ),
      Container(
        color: Colors.grey,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      ),
      Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      ),
      Container(
        color: Colors.purple,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      ),
      Container(
        color: Colors.white12,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      ),
      Container(
        color: Colors.deepOrangeAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      ),
      Container(
        color: Colors.lightGreen,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
      ),
    ];
    return PageView(
      children: reels,
      controller: controller,

    );
  }
}
