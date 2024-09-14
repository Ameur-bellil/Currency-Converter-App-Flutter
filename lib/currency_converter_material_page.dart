import 'package:flutter/material.dart';




class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuild ');
    double result=0;
    final TextEditingController textEditingController = TextEditingController() ;
    final border = OutlineInputBorder(
      borderSide: const  BorderSide(
        color: Colors.black,
        width: 2,
        style: BorderStyle.solid,

      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter '),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                result.toString(),
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  style:const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(
                        Icons.monetization_on_outlined
                    ),
                    prefixIconColor: Colors.black,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: border,
                    enabledBorder: border,
                    ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true
                  ),
                  ),
              ),
              /// buttons :  1. raised ElevatedButton 2. appears like a text TextButton
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: ElevatedButton(
                   onPressed: () {
                     result = double.parse(textEditingController.text)*3.055;
                     print(double.parse(textEditingController.text)*3.055);
                   },
                   style:  ElevatedButton.styleFrom(
                     backgroundColor:  Colors.black,
                     foregroundColor:
                         Colors.white,
                     minimumSize: const Size(
                         double.infinity,50
                     ),
                     elevation:15,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10)
                     ),

                   ),
                   child: const Text('Convert'),
                 ),
               ),
             ],   // Children
            ),
          ), 
        );
  }
}