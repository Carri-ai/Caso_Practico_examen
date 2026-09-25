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
    ),
    Producto(
      nombre: 'Tulipanes',
      precio: 420,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Girasoles',
      precio: 300,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Rosas Blancas',
      precio: 380,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Orquídeas',
      precio: 550,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Lirios',
      precio: 400,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Margaritas',
      precio: 280,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Ramo Simple',
      precio: 450,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Ramo Elegante',
      precio: 600,
      icono: Icons.local_florist,
    ),
    Producto(
      nombre: 'Ramo Especial',
      precio: 500,
      icono: Icons.local_florist,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lion Flowers'),
        backgroundColor: Colors.pink.shade100,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.pink.shade50,
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.local_florist,
                    color: Colors.white,
                    size: 32,
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
            padding: EdgeInsets.all(16),
            child: Text(
              'Nuestro catálogo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              itemCount: productos.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
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