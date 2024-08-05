import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/gradient_container.dart';
import 'package:flutter_tutorial/pages/bookshelf.dart';

// class State {
//   int timesClicked = 0;

//   void handleClick() {
//     timesClicked += 1;
//     debugPrint('Button has been clicked $timesClicked times');
//   }
// }

// State myState = State();

//This must by main
void main() {
  // Start of the app;
  // This is provided by the flutter framework
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Scaffold(
              body: GradientContainer.purple(),
            ),
        // playing with routes
        '/bookshelf': (context) => BookshelfPage()
      },
    );
  }
}
