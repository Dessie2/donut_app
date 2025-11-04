import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final dynamic pizzaColor; //variable no definida o cambiante, por eso dynamic
  final String pizzaImagePath;
  final String pizzaProvider;

  const PizzaTile({
    super.key,
    required this.pizzaFlavor,
    required this.pizzaPrice,
    this.pizzaColor,
    required this.pizzaImagePath,
    required this.pizzaProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50], //color de fondo
          borderRadius: BorderRadius.circular(
            24.0,
          ), //redondeo de las esquinas de fondo
        ),
        child: Column(
          children: [
            //se define la columna
            Row(
              //se pone la fila
              mainAxisAlignment:
                  MainAxisAlignment.end, //alinea a la derecha o final

              children: [
                Container(
                  //para el pcontenedor del precio de fondo
                  decoration: BoxDecoration(
                    color: pizzaColor[100], //color del contenedor
                    borderRadius: BorderRadius.only(
                      //aplicar solo al elemento
                      bottomLeft: Radius.circular(
                        24,
                      ), //aplica solo a la esquina inferior izquierda
                      topRight: Radius.circular(
                        24,
                      ), //aplica solo a la esquina superior derecha
                    ),
                  ),

                  padding: const EdgeInsets.symmetric(
                    //espacio dentro del container
                    vertical: 8,
                    horizontal: 18,
                  ), //espacio interno

                  child: Text(
                    //para poner el precio texto/cantidad
                    '\$$pizzaPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, //negritas
                      fontSize: 18, //tamaño de la letra
                      color: pizzaColor[800], //color del texto
                    ),
                  ),
                ),
              ],
            ),
            //imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 12,
              ), //symetric es para ambos lados
              child: Image.asset(pizzaImagePath),
            ),

            //nombre de la dona
            Text(
              pizzaFlavor,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            //tienda de la dona
            Text(pizzaProvider, style: TextStyle(color: Colors.grey[600])),

            //botones
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, //espacio entre los elementos
                children: [
                  //favorito
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  //agregar
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
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
