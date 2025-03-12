import 'package:flutter/material.dart';

class Sucursal {
  final int idSucursal;
  final String nombre;
  final String direccion;

  Sucursal({
    required this.idSucursal,
    required this.nombre,
    required this.direccion,
  });
}

class SucursalListView extends StatelessWidget {
  final List<Sucursal> sucursales = [
    Sucursal(
        idSucursal: 1,
        nombre: 'Sucursal Centro',
        direccion: 'Calle Principal 123'),
    Sucursal(
        idSucursal: 2,
        nombre: 'Sucursal Norte',
        direccion: 'Avenida Secundaria 456'),
    Sucursal(
        idSucursal: 3, nombre: 'Sucursal Sur', direccion: 'Calle Tercera 789'),
    Sucursal(
        idSucursal: 4,
        nombre: 'Sucursal Este',
        direccion: 'Avenida Cuarta 101'),
    Sucursal(
        idSucursal: 5, nombre: 'Sucursal Oeste', direccion: 'Calle Quinta 202'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camila Rodriguez 1300'),
        backgroundColor: Color(0xfffdb2d5),
      ),
      body: ListView.separated(
        itemCount: sucursales.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: _getColor(index),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID: ${sucursales[index].idSucursal}',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Nombre: ${sucursales[index].nombre}', // Mostrar "Nombre:" antes del nombre
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Dirección: ${sucursales[index].direccion}'),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 8),
      ),
    );
  }

  Color _getColor(int index) {
    final colors = [
      Colors.blue[100],
      Colors.green[100],
      Colors.orange[100],
      Colors.purple[100],
      Colors.teal[100],
    ];
    return colors[index % colors.length]!;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SucursalListView(),
    );
  }
}
