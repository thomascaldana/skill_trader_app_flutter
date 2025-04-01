import 'package:flutter/material.dart';

class BuscarServicosPage extends StatefulWidget {
  const BuscarServicosPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BuscarServicosPageState createState() => _BuscarServicosPageState();
}

class _BuscarServicosPageState extends State<BuscarServicosPage> {
  TextEditingController _controller = TextEditingController();
  final List<String> _sugestoes = [
    'João - Pintor',
    'Maria - Designer',
    'Carlos - Eletricista',
    'Ana - Arquiteta',
  ];

  void _buscarServicos() {
    // Aqui você pode implementar a lógica de busca
    print('Buscando por: ${_controller.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buscar Serviços')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Campo de busca
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Buscar Serviço',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _buscarServicos, // Executa a busca
                ),
              ),
            ),
            SizedBox(height: 20),
            // Sugestões de serviços
            Text(
              'Sugestões de serviços com nome de pessoas:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Lista de sugestões
            Expanded(
              child: ListView.builder(
                itemCount: _sugestoes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_sugestoes[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
