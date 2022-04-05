import 'package:flutter/material.dart';
import 'package:vanilla_contacts/pages/home_page.dart';
import 'package:vanilla_contacts/pages/new_contact.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/new-contact': (context) => const NewContact(),
      },
    );
  }
}
