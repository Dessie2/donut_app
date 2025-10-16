import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor; //variable no definida o cambiante, por eso dynamic
  final String donutImagePath;
  final String donutProvider;

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
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(color: donutColor[50], //color de fondo
        borderRadius: BorderRadius.circular(24.0) //redondeo de las esquinas de fondo
        ), 
        child: Column(
          children: [ //se define la columna
            Row( //se pone la fila
              mainAxisAlignment: MainAxisAlignment.end, //alinea a la derecha o final
      
              children: [
                Container( //para el pcontenedor del precio de fondo
                  decoration: BoxDecoration(
                    color: donutColor[100], //color del contenedor
                    borderRadius: BorderRadius.only( //aplicar solo al elemento
                      bottomLeft: Radius.circular(24), //aplica solo a la esquina inferior izquierda
                      topRight: Radius.circular(24), //aplica solo a la esquina superior derecha
                    ),
                  ),
      
                  padding: const EdgeInsets.symmetric( //espacio dentro del container
                    vertical: 8,
                    horizontal: 18,
                  ), //espacio interno
      
                  child: Text( //para poner el precio texto/cantidad
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, //negritas
                      fontSize: 18, //tamaño de la letra
                      color: donutColor[800], //color del texto
                    ),
                  ),
                ),
              ],
            ),
                //imagen de la dona
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12), //symetric es para ambos lados
                  child: Image.asset(donutImagePath),
                ),
      
                //nombre de la dona
                Text(donutFlavor, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
      
                //tienda de la dona
                Text( donutProvider, style: TextStyle(
                color: Colors.grey[600],
                ),),
      
                //botones
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, //espacio entre los elementos
                    children: [
                      //favorito
                      Icon(Icons.favorite, color:Colors.pink[400]),
                      //agregar
                      TextButton(onPressed: (){}, child: Text('Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                      ),))
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}