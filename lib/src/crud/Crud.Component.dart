import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';

import 'package:angular_demo/src/core/Employee.Model.dart';
import 'package:angular_demo/src/crud/Item.Model.dart';


@Component(
  selector: 'app-crud',
  templateUrl: 'Crud.Component.html',
  styleUrls: const ['Crud.Component.css'],
  directives: const [
    CORE_DIRECTIVES,
    formDirectives,
    materialDirectives
  ],
  providers: const [
    materialProviders
  ],
)
class Crud implements OnInit {

  final List<Employee> employees = <Employee>[
    new Employee(name: 'uno', checked: false),
    new Employee(name: 'dos', checked: false),
    new Employee(name: 'tres', checked: true),
    new Employee(name: 'cuatro', checked: false),
  ];

  final List<Item> items = new List<Item>();

  String title = 'Angular 2: CRUD en Array';
  Item itemCreate = new Item(0, "");
  Item itemUpdate = new Item(0, "");
  Item itemEdit;

  void ngOnInit() {
    this.items.add(new Item(1, 'uno'));
    this.items.add(new Item(2, 'dos'));
    this.items.add(new Item(3, 'tres'));
  }

  void addItem() {
    this.items.add(this.itemCreate);
    this.itemCreate = new Item(0, "");
  }

  void editItem(Item item) {
    this.itemEdit = item;
    this.itemUpdate.id = item.id;
    this.itemUpdate.name = item.name;
  }

  void removeItem(Item item) {
    this.items.remove(item);
  }

  void updateItem(Item item) {
    this.itemEdit.id = this.itemUpdate.id;
    this.itemEdit.name = this.itemUpdate.name;
    this.itemUpdate = new Item(0, "");
  }
}