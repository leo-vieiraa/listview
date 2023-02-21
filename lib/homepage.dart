import 'package:flutter/material.dart';
import 'package:listview/square.dart';

class Homepage extends StatelessWidget {
  // const Homepage({super.key});
  final List _posts = [
    'post_1',
    'post_2',
    'post_3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return Square(
                  child: _posts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
