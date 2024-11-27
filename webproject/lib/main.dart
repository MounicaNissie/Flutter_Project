import 'package:flutter/material.dart';
import 'package:webproject/currency_converter_home_page.dart';


void main(){
  runApp(const MyApp());

  //hot reload -> when we save the samll ui code gets displayed
  //Directionally widget -> we need to specifify the direction of text
}
//custom widget
//Types of widget in terms of ui
//1.stateless widget //-immutable //-the text wouldnt change at all no matter the clicks
//2.statefull widget //- muttable

//state:
//stateless widget is a abstract class so we must implement the methods inside it

class MyApp extends StatefulWidget {
  //const StatelessWidget({ super.key });
  //key -> a class that helps flutter to identify b/w widgets
  // a specific key to a specific widget.
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    //const -> tells that myApp()  doesnt need to instantiate again doesnt need to create again
    // Design guidelines or Design System:
    //1.material design -> created by google
    //2.cupertino design -> created by apple.
    return MaterialApp(
      //Material app is global part only one material app can written.
      //Scaffold looks after the local part and it can have 2 or 3.
      home: CurrencyConverterHomePage(),
    );

  }
}