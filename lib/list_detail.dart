import 'package:flutter/material.dart';
import 'package:list_view_sample/person.dart';

class ListDetail extends StatelessWidget {
  final Person person;
  ListDetail(this.person);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name ?? ""),
      ),
      body: Center(child: Text(person.phone ?? "")),
    );
  }
}
