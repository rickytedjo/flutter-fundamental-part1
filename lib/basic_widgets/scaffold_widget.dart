import 'package:flutter/material.dart';
import 'package:flutter_session_6/basic_widgets/datetime_widget.dart';
import 'package:flutter_session_6/basic_widgets/dialog_widget.dart';
import 'package:flutter_session_6/basic_widgets/image_widget.dart';
import 'package:flutter_session_6/basic_widgets/input_widget.dart';
import 'package:flutter_session_6/basic_widgets/text_widget.dart';

class MyScaffoldPage extends StatefulWidget {
  const MyScaffoldPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyScaffoldPage> createState() => _MyScaffoldPageState();
}

class _MyScaffoldPageState extends State<MyScaffoldPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyImageWidget(),
                  MyTextWidget(),
                  MyInput(),
                  MyDialog(),
                  MyDatetime(title: '')
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
