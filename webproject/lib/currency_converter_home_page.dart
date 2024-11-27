
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';




class CurrencyConverterHomePage extends StatefulWidget{
  const CurrencyConverterHomePage({super.key});

  @override
  State<CurrencyConverterHomePage> createState() => _CurrencyConverterHomePageState();
}

class _CurrencyConverterHomePageState extends State<CurrencyConverterHomePage>
{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
      borderSide:const BorderSide(
        color: Colors.white,
        width: 2.0,
        style: BorderStyle.none,
        strokeAlign: BorderSide.strokeAlignOutside,

      ),
      borderRadius: BorderRadius.circular(60),

    );

   return  Scaffold(
     backgroundColor: Colors.blueGrey,
     appBar: AppBar(
       backgroundColor: Colors.blueGrey,
       elevation: 0,
       title: const Text('Currency Converter',style: TextStyle(
         color: Colors.white,
       ),
       ),
       centerTitle: true,
     ),

     body: Center(
       child:  Column(
         mainAxisAlignment: MainAxisAlignment.center,//Horizantally centered
         //crossAxisAlignment: CrossAxisAlignment.center, //Vertically centered
         children:
         [
           Text(
             'INR $result',
            //result.toString(),
             style: const TextStyle(
               fontSize: 65, //default font-size 14
               fontWeight: FontWeight.bold,
               color: Color.fromARGB(255, 255, 255, 255),

             ),
           ),

          Padding(
             padding: const EdgeInsets.all(8.0),

             child: TextField(
               controller: textEditingController,
               style: const TextStyle(
                 color: Colors.black,
               ),
               decoration: InputDecoration(
                   hintText:  "Please enter the amount in usd",
                 hintStyle: const TextStyle(
                   color: Colors.black,
                 ),
                 prefixIcon: const Icon(Icons.monetization_on_outlined),
                 prefixIconColor: Colors.black,
                 filled: true,
                 fillColor: Colors.white,
                 focusedBorder: border,
                 enabledBorder: border ,
               ),
                keyboardType:   const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,

                )
               ),
           ),
           //button -> two types:
           //1.raised
           //2.appears like a text.

           //3 types of mode:
           // debug
           //release
           //profile
           //hover on it and alt + enter
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: ElevatedButton(onPressed: () {
               setState(() {
                 result = double.parse(textEditingController.text)* 81;

                 if(kDebugMode){
                   print(result.toString());
                 }

               });



             },
               style: ElevatedButton.styleFrom(

                   elevation: 50,
                   backgroundColor: Colors.black,
                   foregroundColor: Colors.white,
                   minimumSize: const Size(double.infinity, 50),

                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                   )
               ),

                 child: const Text('Convert'),
             ),
           )
         ],
       ),
     ),
     );
  }
}

