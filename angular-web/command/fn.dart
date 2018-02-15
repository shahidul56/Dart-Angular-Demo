
@descubrir
class Lista<E> {

  List<E> elements;
  int length;

  Lista() {
    this.length = 0;
    this.elements = [];
  }

  Lista add(E element) {
    this.elements.add(element);
    this.length++;
    return this;
  }

  Lista forEach(Funcion action) {
    for (int i = 0; i < this.length; i++) {
      action(this.elements[i]);
    }
    return this;
  }

  Lista mensaje() {
    print('Mensaje union.');
    return this;
  }

  void persona(var persona) {
    print(persona['nombre']);
    print(persona['apellido']);
    print(persona['edad']);
    //print(persona['fn']);

    var fn = persona['fn']();
    //fn();
  }

}


  
 void main(List<String> args) {

  print('Compute π using the Monte Carlo method.');

  final Lista<int> p = new Lista();

  p.add(50).add(9).add(20).mensaje();

  p.forEach((element) => {
    print('Funcion anonima.'):
    print('Funcion anonima $element')
  });

  p.persona({
    'nombre': 'brayan',
    'apellido': 'martinez',
    'edad': 23,
    'fn': () => {
      print('has llamado a la fundación.'):
      print('espacio.')
    }
  });
}


