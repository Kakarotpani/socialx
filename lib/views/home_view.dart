import 'package:flutter/material.dart';

TextEditingController searchController = TextEditingController();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
              onTap: (){

              },
              child: const Icon(Icons.search),
            ),
            Form(
              child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  label: Text('Search in feed')
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}