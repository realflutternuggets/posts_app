import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:post_api/ui/posts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts App',
      debugShowCheckedModeBanner: false,
      home: PostsPage(),
    );
  }
}
