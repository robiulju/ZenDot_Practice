import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/model/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest API Call"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final user = users[index];
          // final email = user.email;
          final color = user.gender == 'male' ? Colors.blue : Colors.green;

          return ListTile(
            title: Text(user.name.first),
            subtitle: Text(user.phone),
            // tileColor: color,
          );
        },
        itemCount: users.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
      ),
    );
  }

  void fetchUsers() async {
    print("fetchUsers called");
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final body = response.body;
      final json = jsonDecode(body);
      final result =
          json['results'] as List<dynamic>; // Note the correct key 'results'

      final transformed = result.map((e) {
        final name = UserName(
          title: e['name']['title'],
          first: e['name']['first'],
          last: e['name']['last'],
        );
        return User(
          gender: e['gender'],
          email: e['email'],
          phone: e['phone'],
          cell: e['cell'],
          nat: e['nat'],
          name: name,
        );
      }).toList();

      setState(() {
        users = transformed;
      });
    } else {
      print("Failed to load users, status code: ${response.statusCode}");
    }
    print("fetchUsers completed");
  }
}
