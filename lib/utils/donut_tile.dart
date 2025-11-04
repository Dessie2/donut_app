import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  // Propiedades que recibe este widget para mostrar información de la dona
  final String donutFlavor;     // Sabor de la dona
  final String donutPrice;      // Precio de la dona
  final dynamic donutColor;     // Color relacionado a la dona (dynamic para usar paleta de colores)
  final String donutImagePath;  // Ruta de la imagen de la dona
  final String donutProvider;   // Tienda que vende la dona

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    this.donutColor,
    required this.donutImagePath,
    required this.donutProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0), // Espacio exterior
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50], // Color de fondo (tonalidad clara)
          borderRadius: BorderRadius.circular(24.0), // Borde redondeado
        ), 
        child: Column(
          children: [
            // Fila para colocar el precio arriba a la derecha
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Alinea al extremo derecho
              children: [
                // Contenedor del precio
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100], // Color del fondo del precio
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24), // Solo esquina inferior izquierda
                      topRight: Radius.circular(24),   // Solo esquina superior derecha
                    ),
                  ),

                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ), // Espacio interno del recuadro

                  child: Text(
                    '\$$donutPrice', // Precio mostrado
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: donutColor[800], // Texto con tono más oscuro
                    ),
                  ),
                ),
              ],
            ),

            // Imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(donutImagePath), // Muestra la imagen
            ),

            // Nombre del sabor
            Text(
              donutFlavor, 
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Tienda donde se vende
            Text(
              donutProvider, 
              style: TextStyle(
                color: Colors.grey[600], // Texto gris tenue
              ),
            ),

            // Botones de acción: favorito y agregar
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Elementos separados
                children: [
                  // Botón de favorito (solo icono)
                  Icon(Icons.favorite, color:Colors.pink[400]),

                  // Botón para agregar al carrito
                  TextButton(
                    onPressed: (){}, 
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline, // Subrayado
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
