import 'package:flutter/material.dart';
import 'package:shop/providers.dart/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo contador'),
      ),
      body: Column(
        children: [
          Text(CounterProvider.of(context)?.state.value.toString() ?? '0'),
          IconButton(
            
            onPressed: (){
              setState(() {
              provider?.state.incr();
                
              });
              print( provider?.state.value);
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: (){
              setState(() {
              provider?.state.decr();              
              });
              print( provider?.state.value);
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
