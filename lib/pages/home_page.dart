// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import '../routes/app_routes.dart';  // Substitua pelo nome do seu projeto

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bem-vindo ao SkillTrade')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao SkillTrade',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.perfil);  // Navega para a página de Perfil
              },
              child: Text('Meu Perfil'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.conversas);  // Navega para a página de Conversas Ativas
              },
              child: Text('Conversas Ativas'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.buscarServicos);  // Navega para a página de Buscar Serviços
              },
              child: Text('Buscar Serviços'),
            ),
          ],
        ),
      ),
    );
  }
}
