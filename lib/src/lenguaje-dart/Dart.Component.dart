import 'package:angular/angular.dart';


/**
 * Definicion de un componente de angular.
 */
@Component(
  selector: 'app-dart',
  templateUrl: 'Dart.Component.html',
  styleUrls: const ['Dart.Component.css'],
)
class Dart {

  /**
   * Tipado de variables.
   */
  String hola = "Saludo.e"; // Tipo String.
  num numero = 12;          // Tipo numerico.
  int value = 99;           // Tipo entero.
  double decimal = 0.56;    // Tipo double.
  bool checked = false;     // Tipo boleano.
  var variable;             // Tipado dinamico.
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!'; // Variables de tipo funcion, las funciones son de primera clase.


  /**
   * Listas.
   */
  var list = [1, 2, 3];
  List<int> list2 = [1, 2, 3];


  /**
   * Mapas.
   */
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  Map<int, String> nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // Caso de uso.
  // import 'dart:convert';
  // Employee e = JSON.decode('{"name": "hhh",  "value": 00, "checked": true}');
  // https://webdev.dartlang.org/articles/get-data/json-web-service

}