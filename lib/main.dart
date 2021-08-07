import 'package:flutter/material.dart';
import 'package:flutter_animation_with_diego/pizza_order/main_pizza_order_app.dart';
import 'package:flutter_animation_with_diego/pizza_order/pizza_order_detail.dart';

import 'coffee_concept/main_coffee_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Animation With Diego'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text("Coffee Concept"),
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 650),
                        pageBuilder: (context, animation, _) {
                          return FadeTransition(
                            opacity: animation,
                            child: MainCoffeeHome(),
                          );
                        }),
                  );
                },
              ),
              RaisedButton(
                child: Text("Pizza Order"),
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 650),
                        pageBuilder: (context, animation, _) {
                          return FadeTransition(
                            opacity: animation,
                            child: MainPizzaOrderApp(),
                          );
                        }),
                  );
                },
              )
            ],
          ),
        ));
  }
}
