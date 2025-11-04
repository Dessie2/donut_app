import 'package:donut_app/tab/donut_tab.dart';    // Importa la pantalla/tab de Donut
import 'package:donut_app/tab/burger_tab.dart';   // Importa la pantalla/tab de Hamburguesa
import 'package:donut_app/tab/pancake_tab.dart';  // Importa la pantalla/tab de Panqueques
import 'package:donut_app/tab/pizza_tab.dart';    // Importa la pantalla/tab de Pizza
import 'package:donut_app/tab/smoothie_tab.dart'; // Importa la pantalla/tab de Smoothies
import 'package:donut_app/utils/my_tab.dart';     // Importa widget personalizado para pestañas
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState(); // Crea el estado de la pantalla
}

class _MyWidgetState extends State<Homepage> {
  // Lista de pestañas personalizadas con icono y texto
  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png', label: 'Donut'),     // Tab Donut
    const MyTab(iconPath: 'lib/icons/burger.png', label: 'Burguer'),  // Tab Hamburguesa
    const MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'), // Tab Smoothie
    const MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancake'), // Tab Pancake
    const MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),      // Tab Pizza
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(      // Controlador de pestañas
      length: myTabs.length,          // Número de pestañas
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,  // Fondo transparente en AppBar

          leading: Icon(Icons.menu, color: Colors.grey[800]), // Icono menú izquierda

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person), // Icono usuario derecha
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto principal
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text('I want to  ', style: TextStyle(fontSize: 24)), // Texto normal
                  Text(
                    'Eat', // Texto subrayado y negritas
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            // TabBar con los tabs
            TabBar(tabs: myTabs),

            // Contenido de las pestañas
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),    // Vista Donut
                  BurgerTab(),   // Vista Burger
                  SmoothieTab(), // Vista Smoothie
                  PancakeTab(),  // Vista Panqueques
                  PizzaTab(),    // Vista Pizza
                ],
              ),
            ),

            // Contenedor inferior: carrito de compras
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Texto del carrito (items + costo + delivery)
                  Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2 Items | \$45', // Numero de items y costo
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Delivery Charges Included', // Info delivery
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  // Botón para ver carrito
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, // Color del botón
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {}, // Acción al presionar (vacío)
                    child: const Text(
                      'view Cart', // Texto del botón
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
