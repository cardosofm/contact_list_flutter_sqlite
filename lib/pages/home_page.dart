import 'package:contact_list_sqlite/helpers/contact_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // instancia da classe helper
  ContactHelper helper = ContactHelper();
  // criação de uma lista vazia que receberá o conteudo do banco de dados
  List<Contact> contacts = [];

  @override
  void initState() {
    super.initState();
    // colocando todos os contatos na lista contacts
    helper.getAllContacts().then((list) {
      setState(() {
        contacts = list;
      });
    });
  }

  /*
  @override
  void initState() {
    super.initState();
    */ /*Contact c = Contact();
    c.nome = "Fernando";
    c.email = "fernando@bruner.com.br";
    c.telefone = "123456";
    c.img = "";
    helper.saveContact(c);*/ /*

    helper.getAllContacts().then((list) {
      print(list);
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List with SQLite'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: contacts.length,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {}),
      ),
    );
  }
}
