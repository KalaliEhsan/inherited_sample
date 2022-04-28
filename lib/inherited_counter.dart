import 'package:flutter/cupertino.dart';
import 'package:inherited_sample/inherited_wrapper.dart';

class InheritedCounter extends InheritedWidget {
  // const InheritedCounter({Key? key, required this.child, required this.counter})
  //     : super(key: key, child: child);
  const InheritedCounter(
      {Key? key,
      required this.child,
      required this.data,
      required this.counter})
      : super(key: key, child: child);

  final int counter;
  final Widget child;
  final InheritedWrapperState data;

  @override
  bool updateShouldNotify(covariant InheritedCounter oldWidget) {
    return oldWidget.counter != counter;
  }

  static InheritedCounter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }
}
