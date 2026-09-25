import 'package:flutter/material.dart';

class Producto {
  final String nombre;
  final double precio;
  final IconData icono;

  const Producto({
    required this.nombre,
    required this.precio,
    required this.icono,
  });
}