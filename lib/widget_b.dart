import 'package:flutter/cupertino.dart';
import 'package:inherited_sample/inherited_wrapper.dart';

class WidgetB extends StatelessWidget {
  const WidgetB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('count is: ${InheritedWrapper.of(context).counter}'),
    );
  }
}
