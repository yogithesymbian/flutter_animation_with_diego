import 'package:flutter/material.dart';

class PizzaOrderDetails extends StatelessWidget {
  const PizzaOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Orleans Pizza",
          style: TextStyle(color: Colors.brown, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.brown,
              ))
        ],
        leading: BackButton(
          color: Colors.brown,
        ),
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Column(
          children: [
            Expanded(child: _PizzaDetails()),
            Expanded(child: Container()),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class _PizzaDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Image.asset('assets/pizza_order/dish.png'),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Image.asset('assets/pizza_order/pizza-1.png'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '\$30',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.brown),
        )
      ],
    );
  }
}
