import 'package:flutter/material.dart';
import 'HomePageState.dart';
class HomePage extends StatefulWidget {

  Function function;
  bool isDark;
  HomePage(this.function,this.isDark);

  @override
  State<HomePage> createState() => HomePageState();
}