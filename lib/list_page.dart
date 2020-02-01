import 'package:flutter/material.dart';
import 'package:list_view_sample/list_item.dart';
import 'package:list_view_sample/person.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Person> _presonList = [
      Person("pyae", "address", "09lasjlkfsa"),
      Person("sone", "address", "09djasl"),
      Person("phyo", "address", "phone"),
      Person("name", "address", "phone"),
      Person("name", "address", "phone"),
      Person("name", "address", "phone"),
      Person("name", "address", "phone"),
      Person("name", "address", "phone"),
      Person("name", "address", "phone"),
      Person("name", "address", "phone"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("List Sample"),
      ),
      body: ListView.builder(
          itemCount: _presonList.length,
          itemBuilder: (context, index) => ListItem(
                number: index + 1,
                person: _presonList[index],
                phone: _presonList[index].phone,
              )),
    );
  }
}
