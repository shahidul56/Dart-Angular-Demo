


class Item {

  int id;
  String name;

  Item(this.id, this.name);

  toString() {
    return '[id:' + this.id.toString() + ',name:' + this.name + ']';
  }
}