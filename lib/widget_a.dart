import 'package:flutter/material.dart';

import 'inherited_wrapper.dart';

class WidgetA extends StatelessWidget {
  const WidgetA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: InheritedWrapper.of(context).incrementCounter,
        child: const Text('Increment'));
  }
}
