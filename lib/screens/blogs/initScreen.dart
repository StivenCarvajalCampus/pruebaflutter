import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InitScreen extends StatefulWidget {
  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  late Future<List<dynamic>> _posts;

  @override
  void initState() {
    super.initState();
    _posts = fetchPosts();
  }

  Future<List<dynamic>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const Row(children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://imagenes.noticiasrcn.com/ImgNoticias/avatar_en_wa.jpg'),
              ),
              SizedBox(width: 28),
              Text(
                'Hola, Stiven',
                style: TextStyle(color: Colors.black),
              ),
            ])),
        body: FutureBuilder<List<dynamic>>(
          future: _posts,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final List<dynamic> posts = snapshot.data!;
              final title1 = posts.isNotEmpty ? posts[0]['title'] : '';
              final title2 = posts.length > 1 ? posts[1]['title'] : '';
              return Stack(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Title 1: $title1',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 0,
                    child: Image.network(
                      'https://picsum.photos/seed/picsum/200/300', // Reemplaza esto con la URL de la imagen que desees mostrar
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Title 2: $title2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
