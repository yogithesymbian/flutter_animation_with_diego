import 'package:flutter/material.dart';
// import 'package:flutter_coffe/coffee_bloc.dart';
import 'coffee_concept_home.dart';

void main() => runApp(MainCoffee());

class MainCoffee extends StatefulWidget {
  const MainCoffee({Key? key}) : super(key: key);

  @override
  _MainCoffeeState createState() => _MainCoffeeState();
}

class _MainCoffeeState extends State<MainCoffee> {
  // final bloc = CoffeeBLoC();

  // @override
  // void initState() {
  //   bloc.init();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   bloc.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.light(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CoffeeConceptHome(),
        ));
    //     child: CoffeeProvieder(
    // bloc: bloc,
    // child: MaterialApp(
    //   home: CoffeeConceptHome(),
    // )));
  }
}
