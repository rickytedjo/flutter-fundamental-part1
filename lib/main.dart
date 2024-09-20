import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_session_6/basic_widgets/datetime_widget.dart';
import 'package:flutter_session_6/basic_widgets/dialog_widget.dart';
import 'package:flutter_session_6/basic_widgets/image_widget.dart';
import 'package:flutter_session_6/basic_widgets/input_widget.dart';
import 'package:flutter_session_6/basic_widgets/scaffold_widget.dart';
import 'package:flutter_session_6/basic_widgets/text_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: MyScaffoldPage(title: '')));
  }
}
