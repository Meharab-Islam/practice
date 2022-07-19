import 'package:flutter/material.dart';

void main() {
  runApp(const Mainapp());
}

class Mainapp extends StatelessWidget {
  const Mainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // methods
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    screenCount() {
      if (width > 1000) {
        return 5;
      } else if (width > 800) {
        return 3;
      } else {
        return 2;
      }
    }

    double cheight = 200;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (width > 800) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text("Tab"),
              centerTitle: true,
            ),
            body: Center(
                child: Container(
              height: constraints.maxWidth / 3,
              width: constraints.maxWidth / 3,
              color: Colors.red,
            )),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Mobile"),
              centerTitle: true,
              backgroundColor: Colors.red,
            ),
            body: Center(
                child: Container(
              height: constraints.maxWidth / 3,
              width: constraints.maxWidth / 3,
              color: Colors.green,
            )),
          );
        }
      },
    );
  }
}







// children: [
//             Container(
//               height: cheight,
//               width: 200,
//               color: Colors.red.shade400,
//             ),
//             Container(
//               height: cheight,
//               width: 200,
//               color: Colors.green.shade400,
//             ),
//             Container(
//               height: cheight,
//               width: 200,
//               color: Colors.yellow.shade400,
//             ),
//             Container(
//               height: cheight,
//               width: 200,
//               color: Colors.orange.shade400,
//             ),
//             Container(
//               height: cheight,
//               width: 200,
//               color: Colors.pink.shade400,
//             ),
//             Container(
//               height: cheight,
//               width: 200,
//               color: Colors.blue.shade400,
//             ),
//             Container(
//               height: cheight,
//               width: 200,
//               color: Colors.grey.shade400,
//             ),
//           ],