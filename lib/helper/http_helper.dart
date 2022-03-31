import 'dart:convert';
import 'package:http/http.dart';
import 'package:post_api/model/post_model.dart';

class HttpHelper{
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    Response res = await get(Uri.parse(postsURL));

    if(res.statusCode == 200){
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body
      .map((dynamic item) => Post.fromJSON(item),)
      .toList();
      return posts;
    } else{
      throw "Unable to retrieve the post data";
    }
  }
}