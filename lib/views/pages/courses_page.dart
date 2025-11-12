import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:flutter_app/data/classes/activity_class.dart';
import 'package:flutter_app/views/widgets/container_widget.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
        convert.jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ContainerWidget(
                    title: activity.activity,
                    description: activity.accessibility,
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('Error'));
          }
        },
      ),
    );
  }
}
