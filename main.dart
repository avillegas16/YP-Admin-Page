import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yo_spanish_list_app/custom_data.dart';
import 'package:yo_spanish_list_app/litview_test.dart';
import 'package:yo_spanish_list_app/models/user.dart';
import 'package:yo_spanish_list_app/services/auth.dart';
import 'package:yo_spanish_list_app/ui/screens/wrapper/wrapper.dart';
import 'firebaserealtimedemo.dart';
import 'package:yo_spanish_list_app/harshit/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: AuthService().user,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()
          /*   home: Wrapper(),*/
          ),
    );
  }
}
