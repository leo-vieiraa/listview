import 'package:flutter/material.dart';
import 'package:listview/square.dart';
import 'package:listview/circle.dart';

class Homepage extends StatelessWidget {
  // const Homepage({super.key});
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
  ];

  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // instagram stories
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Circle(
                    child: _stories[index],
                  );
                }),
          ),

          // instagram posts
          Expanded(
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
