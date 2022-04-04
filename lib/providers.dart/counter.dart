import 'package:flutter/cupertino.dart';

class CounterState{
  int _value = 0;

  void incr(){
    _value++;
  }
   void decr(){
    _value--;
  }
   int get value{
    return _value;
  }
  bool diff(CounterState old){
    return old._value != _value;
  }
}


class CounterProvider extends InheritedWidget{
final CounterState state = CounterState();

   CounterProvider({Key? key, required Widget child }) : super(key: key, child: child);

   static CounterProvider? of(BuildContext context){
     return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
   }

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return oldWidget.state.diff(state);
  }
  
}