import 'package:flutter/material.dart';
import 'package:webly_task/app.dart';
import 'package:webly_task/service_locator.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setUpServiceLocator();
  runApp(const WeblyTask());
}