import 'package:counter_app/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Count"),
          Text('$count'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(onPressed: ()=> ref.read(counterProvider.notifier).increment(), icon: Icon(Icons.add)),
            IconButton(
                onPressed: () => ref.read(counterProvider.notifier).incrementbyfive(),
                icon: Icon(Icons.add),
              ),
            IconButton(onPressed: ()=> ref.read(counterProvider.notifier).deincrement(), icon: Icon(Icons.remove)),
            IconButton(onPressed: ()=>ref.read(counterProvider.notifier).reset(), icon: Icon(Icons.restart_alt)),
            
          ],)
        ],
      ),
    );
  }

}