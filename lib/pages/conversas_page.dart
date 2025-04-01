import 'package:flutter/material.dart';

class ConversasPage extends StatelessWidget {
  const ConversasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final conversas = [
      {'nome': 'Carla', 'servico': 'Profª de Inglês', 'mensagem': 'Olá! Eu posso te ajudar com aulas de inglês.', 'avatar': 'https://randomuser.me/api/portraits/women/2.jpg'},
      {'nome': 'João', 'servico': 'Aula de Violão', 'mensagem': 'Oi! Se você quiser aprender violão, estou disponível para aulas.', 'avatar': 'https://randomuser.me/api/portraits/men/1.jpg'},
      {'nome': 'Beatriz', 'servico': 'Tradução de Textos', 'mensagem': 'Olá! Precisa de algum serviço de tradução? Estou disponível para ajudar.', 'avatar': 'https://randomuser.me/api/portraits/women/3.jpg'},
      {'nome': 'Bruno Dias', 'servico': 'Desenvolvedor Backend', 'mensagem': 'Oi, sou desenvolvedor em Python e posso te ajudar com o backend do seu projeto.', 'avatar': 'https://randomuser.me/api/portraits/men/2.jpg'},
      {'nome': 'Roberto', 'servico': 'Fotógrafo Profissional', 'mensagem': 'Olá! Precisa de ensaio fotográfico? Ofereço serviços profissionais.', 'avatar': 'https://randomuser.me/api/portraits/men/3.jpg'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Conversas Ativas'),
      ),
      body: ListView.builder(
        itemCount: conversas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(conversas[index]['avatar']!),
            ),
            title: Text(conversas[index]['nome']!),
            subtitle: Text('${conversas[index]['servico']} - ${conversas[index]['mensagem']}'),
            trailing: Icon(Icons.chat_bubble_outline),
            onTap: () {

            },
          );
        },
      ),
    );
  }
}
