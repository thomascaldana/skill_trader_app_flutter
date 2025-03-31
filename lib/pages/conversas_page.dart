// lib/pages/conversas_page.dart
import 'package:flutter/material.dart';

class ConversasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversas Ativas')),
      body: Center(
        child: Text('Aqui estão suas conversas ativas.'),
      ),
    );
  }
}
