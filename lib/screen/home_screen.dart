import 'package:flutter/material.dart';

import '../models/producto.dart';
import '../widgets/producto_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Producto> productos = const [
    Producto(
      nombre: 'Rosas Rojas',
      precio: 350,
      icono: Icons.local_florist,
      color: Colors.red,
    ),
    Producto(
      nombre: 'Tulipanes',
      precio: 420,
      icono: Icons.local_florist,
      color: Colors.pink,
    ),
    Producto(
      nombre: 'Girasoles',
      precio: 300,
      icono: Icons.local_florist,
      color: Colors.amber,
    ),
    Producto(
      nombre: 'Rosas Blancas',
      precio: 380,
      icono: Icons.local_florist,
      color: Colors.blueGrey,
    ),
    Producto(
      nombre: 'Orquídeas',
      precio: 550,
      icono: Icons.local_florist,
      color: Colors.purple,
    ),
    Producto(
      nombre: 'Lirios',
      precio: 400,
      icono: Icons.local_florist,
      color: Colors.deepPurple,
    ),
    Producto(
      nombre: 'Margaritas',
      precio: 280,
      icono: Icons.local_florist,
      color: Colors.orange,
    ),
    Producto(
      nombre: 'Ramo Simple',
      precio: 450,
      icono: Icons.local_florist,
      color: Colors.green,
    ),
    Producto(
      nombre: 'Ramo Elegante',
      precio: 600,
      icono: Icons.local_florist,
      color: Colors.indigo,
    ),
    Producto(
      nombre: 'Ramo Especial',
      precio: 500,
      icono: Icons.local_florist,
      color: Colors.pinkAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lion Flowers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink.shade100,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink.shade100,
                  Colors.pink.shade50,
                ],
              ),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.local_florist,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '¡Bienvenido a Lion Flowers!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Encuentra las flores perfectas para cada ocasión.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 18, 16, 10),
            child: Text(
              'Nuestro catálogo',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              itemCount: productos.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) {
                return ProductoCard(
                  producto: productos[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}