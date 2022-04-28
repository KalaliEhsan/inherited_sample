import 'package:flutter/cupertino.dart';
import 'package:inherited_sample/inherited_counter.dart';

class InheritedWrapper extends StatefulWidget {
  final Widget child;

  const InheritedWrapper({Key? key, required this.child}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InheritedWrapperState();

  static InheritedWrapperState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedCounter>())!
        .data;
  }
}

class InheritedWrapperState extends State<InheritedWrapper> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) =>
      InheritedCounter(child: widget.child, data: this, counter: counter);
}
