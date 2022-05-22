import 'package:flutter/material.dart';
import 'package:softcent_task/core/di/injection_container.dart';
import 'package:softcent_task/resources/theme_manager.dart';

void main() async {
  await initAppModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
    );
  }
}
