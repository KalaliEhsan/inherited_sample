import 'package:flutter/material.dart';
import 'package:inherited_sample/widget_c.dart';

import 'inherited_wrapper.dart';
import 'widget_a.dart';
import 'widget_b.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InheritedWrapper(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            WidgetA(),
            WidgetB(),
            WidgetC(),
          ],
        ),
      ),
    ));
  }
}
