import 'package:contact_list_sqlite/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper helper = ContactHelper();

  @override
  void initState() {
    super.initState();
    /*Contact c = Contact();
    c.nome = "Fernando";
    c.email = "fernando@bruner.com.br";
    c.telefone = "123456";
    c.img = "";
    helper.saveContact(c);*/

    helper.getAllContacts().then((list) {
      print(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List with SQLite'),
      ),
    );
  }
}
