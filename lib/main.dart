import 'package:flutter/material.dart';
import 'package:flutter_state/screens/weight_page.dart';
import 'package:flutter_state/state/weight_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Demos',
        theme:  ThemeData(
          primaryColor: Colors.black,
        ),
        home: WeightPage(),
      ),
      providers: <SingleChildCloneableWidget>[ChangeNotifierProvider(builder: (context)=>WeightState())],
    );
  }
}

