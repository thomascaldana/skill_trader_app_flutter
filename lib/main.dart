// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/perfil_page.dart';
import 'pages/conversas_page.dart';
import 'pages/buscar_servicos_page.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkillTrade',
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.login: (context) => LoginPage(),
        AppRoutes.perfil: (context) => PerfilPage(),
        AppRoutes.conversas: (context) => ConversasPage(),
        AppRoutes.buscarServicos: (context) => BuscarServicosPage(),
      },
    );
  }
}
