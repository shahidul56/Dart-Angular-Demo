import 'dart:async';



/**
 * Definicion de una clase en el lenguaje Dart.
 */
class Clazz {

  /**
   * Modificadores.
   */
  static int stat = 10;  // Atributo estatico.
  final CERO = 0;        // Atributo constante.
  static const UNO = 1;  // Atributo staico y constante.
  static final DOS = 2;  // Atributo staico y constante.

  /**
   * Atributos de esta clase.
   */
  num x, y;  // Para trabajar con get y set.



  /**
   * Se definen en el constructor y se bebe asignar manualmente.
   */
   Clazz(int x, int y) {
    this.x = x;
    this.y = y;
  }

  /**
   * Constructores con nombres.
   * Se definen en el constructor y se asignar automaticamente.
   */
  Clazz.auto(this.x, this.y) { }

  /**
   * Constructores con nombres.
   * Se definen en el constructor y se bebe asignar manualmente.
   */
  Clazz.manual(int x, int y) {
    this.x = x;
    this.y = y;
  }

  /**
   * Redirigir constructores.
   */
  Clazz.alongXAxis(num x) : this(x, 0);

  /**
   * Getter y Setter de toda la vida.
   */
  void setX(int x) {
    this.x = x;
  }

  int getX() {
    return this.x;
  }

  void setY(int y) {
    this.y = y;
  }

  int getY() {
    return this.y;
  }

  /**
   * Getter y Setter con palabra reselvada.
   */
  int get getX2 =>  this.x;
  int get getY2 =>  this.y;

  set setX2(int x2) => this.x = x2;
  set setY2(int y2) => this.y = y2;

  /**
   * Declaracion de una funcion.
   */
  bool isCero(int value) {
    return value ==  this.CERO;
  }

  /**
   * Simplificacion de funciones con una sola exprecion.
   */
  bool isCeroSimple(int value) => value ==  this.CERO;

  /**
   * Parametros opcionales, se llama a la funcion de esta manera: enableFlags(bold: true, hidden: false);
   */
  void enableFlags({bool bold, bool hidden}) { }

  /**
   * Posicion opcional de parametros, se identifican con los [].
   */
  String say(String from, String msg, [String device]) {

    var result = '$from says $msg';

    if (device != null) {
      result = '$result with a $device';
    }

    return result;
  }

  /**
   * Parametros con valores por defecto, se llama a la funcion de esta manera: enableFlags2(bold: true);
   */
  void enableFlags2({bool bold = false, bool hidden = false}) { }

  /**
   * Currificacion de funciones. se llama a la funcion de esta manera: suma(5)(6);
   */
  Function suma(int a) {
    return (int b) => a + b;
  }

  /**
   * Sobrecarga de operadores.
   * Overrides + (a + b).
   */
  Clazz operator +(Clazz v) {
    return new Clazz(x + v.x, y + v.y);
  }

  /**
   * Metodos genericos.
   */
  T first<T>(List<T> ts) {
    final T tmp = ts[0];
    return tmp;
  }

  /**
   * Metodos estaticos.
   */
  static void mensage() {
    print("Metodo estatico.");
  }

  /**
   * Metodos asincronos.
   */
  Future checkVersion() async {
    var version = await suma(5)(8);
    return version;
  }

  /**
   * Generadores.
   */
  Stream<int> asynchronousNaturalsTo(int n) async* {
    int k = 0;
    while (k < n) yield k++;
  }

  /**
   * Covertir a String.
   */
  @override
  String toString() {
    return 'Clazz{CERO: $CERO, x: $x, y: $y}';
  }


}