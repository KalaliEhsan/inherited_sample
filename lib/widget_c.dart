import 'package:flutter/material.dart';

import 'inherited_wrapper.dart';

class WidgetC extends StatelessWidget {
  const WidgetC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
      onPressed: InheritedWrapper.of(context).decrementCounter,
      child: const Text('Decrement'));
}
