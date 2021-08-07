// import 'package:flutter/material.dart';

// const _initialPage = 8.0;
// init
// class CoffeeBLoC {
//   final pageCoffeController =
//       PageController(viewportFraction: 0.35, initialPage: _initialPage.toInt());

//   final pageTextController = PageController(initialPage: _initialPage.toInt());
//   final currentPage = ValueNotifier<double>(_initialPage);
//   final textPage = ValueNotifier<double>(_initialPage);

//   void init() {
//     pageCoffeController.addListener(_coffeeScrollListener);
//     pageTextController.addListener(_textScrollListener);
//   }

//   void _coffeeScrollListener() {
//     currentPage.value = pageCoffeController.page!;
//   }

//   void _textScrollListener() {
//     textPage.value = pageCoffeController.page!;
//   }

//   void dispose() {
//     pageCoffeController.removeListener(_coffeeScrollListener);
//     pageTextController.removeListener(_textScrollListener);
//     pageCoffeController.dispose();
//     pageTextController.dispose();
//   }
// }

// class CoffeeProvieder extends InheritedWidget {
//   final CoffeeBLoC bloc;

//   CoffeeProvieder({required this.bloc, required Widget child})
//       : super(child: child);

//   static CoffeeProvieder? of(BuildContext context) =>
//       context.findAncestorWidgetOfExactType<CoffeeProvieder>();

//   @override
//   bool updateShouldNotify(covariant CoffeeProvieder oldWidget) => false;
// }
