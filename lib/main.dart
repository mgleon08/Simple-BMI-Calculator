import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF090C21),
          scaffoldBackgroundColor: Color(0xFF090C21),
        ),
//      ThemeData(
//        primaryColor: Color(0xFF090C21),
//        scaffoldBackgroundColor: Color(0xFF090C21),
//        textTheme: TextTheme(
//          body1: TextStyle(color: Colors.white),
//        ),
//      ),
        initialRoute: '/',
        routes: {
          '/': (context) => InputPage(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == ResultsPage.routeName) {
            final ResultsPage args = settings.arguments;
            return MaterialPageRoute(builder: (context) {
              return ResultsPage(
                bmiResult: args.bmiResult,
                resultText: args.resultText,
                interpretation: args.interpretation,
              );
            });
          }
        });
  }
}
