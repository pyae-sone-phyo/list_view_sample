import 'package:flutter/material.dart';
import 'package:list_view_sample/list_detail.dart';
import 'package:list_view_sample/person.dart';

class ListItem extends StatelessWidget {
  final int number;
  final Person person;
  final String phone;
  ListItem({this.number, this.person, this.phone});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Text(number.toString()),
        title: Text(person.name ?? ""),
        subtitle: Text(phone ?? ""),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ListDetail(person)));
        },
      ),
    );
  }
}
