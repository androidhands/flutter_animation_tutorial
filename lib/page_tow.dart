import 'package:flutter/material.dart';
import 'package:flutter_animation_tutorial/main.dart';

import 'custom_slider.dart';

class PageTow extends StatelessWidget {
  const PageTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(CustomSlider(page: const MyHomePage()));
            },
            child: Text('Go to Page One'),
          ),
        ),
      ),
    );
  }
}
