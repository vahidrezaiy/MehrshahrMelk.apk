import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('مهرشهرملک')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('خوش آمدید به مهرشهرملک', style: TextStyle(fontSize:20)),
              SizedBox(height:12),
              Text('این یک نسخهٔ اسکلت است — برای توسعه بیشتر آماده است.')
            ],
          ),
        ),
      ),
    );
  }
}
