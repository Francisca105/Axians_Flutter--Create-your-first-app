import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text('Flutter Aplication'), centerTitle: true),
        body: Center(
            child: FractionallySizedBox(
                widthFactor: .5,
                child: Container(
                    color: Theme.of(context).colorScheme.primary,
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Header'),
                          Text('Body Text'),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.access_alarm),
                                Icon(Icons.baby_changing_station),
                                Icon(Icons.add_road),
                                // NewWidget(x: true)
                              ])
                        ])))));
  }
}

// class NewWidget extends StatelessWidget {
//   bool x;

//   NewWidget({
//     super.key,
//     required this.x
//   });
// }