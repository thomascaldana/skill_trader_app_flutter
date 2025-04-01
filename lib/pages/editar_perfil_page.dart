// lib/pages/editar_perfil_page.dart
import 'package:flutter/material.dart';

class EditarPerfilPage extends StatefulWidget {
  @override
  _EditarPerfilPageState createState() => _EditarPerfilPageState();
}

class _EditarPerfilPageState extends State<EditarPerfilPage> {
  String nome = 'Nome do Usuário'; // Nome inicial do usuário
  final TextEditingController nomeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nomeController.text = nome; // Preenche o controller com o nome atual
  }

  void salvarNome() {
    setState(() {
      nome = nomeController.text; // Atualiza a variável local com o novo nome
    });
    Navigator.pop(context); // Retorna à página anterior após salvar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar Perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Editar Nome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Novo Nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: salvarNome,
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
