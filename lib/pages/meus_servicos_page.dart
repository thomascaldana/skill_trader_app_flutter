import 'package:flutter/material.dart';

class MeusServicosPage extends StatefulWidget {
  @override
  _MeusServicosPageState createState() => _MeusServicosPageState();
}

class _MeusServicosPageState extends State<MeusServicosPage> {
  List<String> servicos = [
    'Aulas de Programação',
    'Aula de Jardinagem',
    'Consultoria em Engenharia Civil',
  ];

  final TextEditingController novoServicoController = TextEditingController();


  void adicionarServico(String nome) {
    setState(() {
      servicos.add(nome);
    });
    novoServicoController.clear();
  }

  // Função para excluir serviço
  void excluirServico(int index) {
    setState(() {
      servicos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meus Serviços')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: novoServicoController,
                      decoration: InputDecoration(
                        labelText: 'Novo Serviço',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      if (novoServicoController.text.isNotEmpty) {
                        adicionarServico(novoServicoController.text);
                      }
                    },
                  ),
                ],
              ),
            ),

            // Lista de serviços
            Expanded(
              child: ListView.builder(
                itemCount: servicos.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(servicos[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              // Lógica de edição (não implementada)
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              excluirServico(index);
                            },
                          ),
                        ],
                      ),
                    ),
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
