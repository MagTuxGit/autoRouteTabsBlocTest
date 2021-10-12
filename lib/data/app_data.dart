import 'dart:math';

import 'package:flutter/material.dart';

class Post {
  final Color color;
  final String title;
  final int id;

  Post(this.color, this.title, this.id);

  static List<Post> posts = [
    for (int i = 0; i < 50; i++)
      Post(Colors.primaries[Random().nextInt(Colors.primaries.length)], 'Post $i', i)
  ];
}

class User {
  final Color color;
  final String name;
  final int id;

  User(this.color, this.name, this.id);

  static List<Post> users = [
    for (int i = 0; i < 50; i++)
      Post(Colors.primaries[Random().nextInt(Colors.primaries.length)], 'User $i', i)
  ];
}
