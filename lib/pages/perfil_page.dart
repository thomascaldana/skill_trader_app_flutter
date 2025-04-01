// lib/pages/perfil_page.dart
import 'package:flutter/material.dart';
import '../routes/app_routes.dart'; // Substitua pelo nome do seu projeto

class PerfilPage extends StatelessWidget {
  // Informações do usuário
  final String nome = 'Nome do Usuário';
  final String email = 'Email: usuario@email.com';
  final String imagemPerfil = 'https://www.example.com/usuario.jpg';

  const PerfilPage({super.key}); // Coloque aqui o link da imagem

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meu Perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // Centraliza todo o conteúdo
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto do perfil
              Container(
                child: Image.asset('assets/img_perfil.png', width: 250),
              ),
              SizedBox(height: 20),

              // Nome do usuário
              Text(
                nome,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              // Email do usuário
              Text(
                email,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 40),

              // Botões de ações com a largura total
              SizedBox(
                width: double.infinity, // Ocupa toda a largura disponível Navigator.pushNamed(context, AppRoutes.editarPerfil)
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.editarPerfil);
                  },
                  child: Text('Editar Perfil'),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity, // Ocupa toda a largura disponível
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.meusServicos);
                  },
                  child: Text('Meus Serviços'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
