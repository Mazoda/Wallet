import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';
import 'package:easy_localization/easy_localization.dart';
void main() {
  
  runApp(MyApp() );
}

  
  class MyApp extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
   
  
    
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
 return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(changeTheme,isDark), debugShowCheckedModeBanner: false
    );
  }
  }


