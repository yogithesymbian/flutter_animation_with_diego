import 'package:flutter/material.dart';
import 'package:flutter_animation_with_diego/pizza_order/pizza_order_detail.dart';

class MainPizzaOrderApp extends StatelessWidget {
  const MainPizzaOrderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: PizzaOrderDetails(),
    );
  }
}
