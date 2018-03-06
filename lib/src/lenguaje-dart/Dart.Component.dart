import 'package:angular/angular.dart';
import 'package:angular_demo/src/core/Employee.Model.dart';

import 'Clazz.Model.dart';
import 'Color.Model.dart';


/**
 * Definicion de un componente de angular.
 */
@Component(
  selector: 'app-dart',
  templateUrl: 'Dart.Component.html',
  styleUrls: const ['Dart.Component.css'],
)
class Dart {

  static final int stat = 10;


  //Types.
  bool isDone = true;                                               // boolean
  int integer = 123;                                                // number
  double decimal = 6.6;                                             // number
  num hex = 0x000f;                                                 // number
  num binary = 01111;                                               // number
  String color = 'blue';                                            // string
  String composite1 = 'Texto & valores: ${Dart.stat}';              // string
  String composite2 = 'The + operator ' + 'works, as well.';        // string
  String composite3 = 'String ' 'concatenation' " works.";          // string
  String notAccessible = null;                                      // string

  //Dinamic Types.
  var notTyped1;                                                     // any
  var notTyped2 = null;                                              // any
  var notTyped3 = 4;                                                 // any
  var notTyped4 = 'a string';                                        // any
  dynamic notTyped5 = 6;                                             // any
  dynamic notTyped6 = 'a string';                                    // any


  //Const of instance.
  final immutable = 123;                                              // number


  //Arrays y Objects.
  var tuple = [1, "hola", true];                                     // tuple
  List<int> list = [1, 2, 3];                                        // list
  var object = {'first': 1, 'second': 'hola', 'fifth': true};        // Object
  Map<int, String> map = {2: 'helium', 10: 'neon', 18: 'argon',};    // map

  //Enumerate.
  Color enumColorValue  = Color.Green;                               // enum Color
  int enumColorIndex    = Color.Green.index;                         // number
  String enumColorName  = Color.Green.toString();                    // string
  List<Color> colors    = Color.values;                              // list


  //Interfaces.
  Employee employee1 = new Employee(name: 'Jhon' );                  // Employee
  Employee employee2 = new Employee(value: 10, name: 'Jhon' );       // Employee
  Employee employee3 = new Employee(name: 'JBB', checked: true);     // Employee
  // https://webdev.dartlang.org/articles/get-data/json-web-service

  //Classes.
  Clazz clazz1 = new Clazz(1, 2);                                     // Clazz
  Clazz clazz2 = new Clazz.auto(1, 2);                                // Clazz
  Clazz clazz3 = new Clazz.alongXAxis(1);                             // Clazz

  //Function.
  var messeger1 = (msg) => msg.toUpperCase();                         // Function
  Function messeger2 = (msg) => msg.toUpperCase();                    // Function




  String various() {
      const var2 = 'constante';                        // Se define constante
      String var1;                                     // Se define variable
      var1 = '...';                                    // Se reasigna un valor
      final Clazz clazz1 = new Clazz(1, 2);            // Se instancia un objeto de forma constante.
      int var3 = clazz1.getX();                        // Se Obtiene un valor.
      var3 = clazz1.getX2;                             // Se utiliza como publico
      clazz1.setX2 = var3;                             // Se utiliza como publico
      return 'function various...';
  }

  void fuctions() {
    final employees = new List<Employee>();            // Employee[]
    for (const employee in employees) {                // For each
       print(employee);
    }
  }

  String showEmployee(Employee employee) {
    return '{name:' + employee.name + ',value:' + employee.value.toString() + ',chequed:' + employee.checked.toString() + '}';
  }

}