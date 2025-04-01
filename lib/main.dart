// lib/main.dart
import 'package:flutter/material.dart';
import 'package:skill_trader_app_flutter/pages/editar_perfil_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/perfil_page.dart';
import 'pages/conversas_page.dart';
import 'pages/buscar_servicos_page.dart';
import '../pages/meus_servicos_page.dart';
import 'routes/app_routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkillTrade',
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.login: (context) => LoginPage(),
        AppRoutes.perfil: (context) => PerfilPage(),
        AppRoutes.conversas: (context) => ConversasPage(),
        AppRoutes.buscarServicos: (context) => BuscarServicosPage(),
        AppRoutes.meusServicos: (context) => MeusServicosPage(),
        AppRoutes.editarPerfil: (context) => EditarPerfilPage(),
      },
    );
  }
}

