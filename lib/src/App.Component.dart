import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_demo/src/binding/Binding.Component.dart';
import 'package:angular_demo/src/crud/Crud.Component.dart';
import 'package:angular_demo/src/directivas_ng/DirectivasNg.Component.dart';
import 'package:angular_demo/src/lenguaje-dart/Dart.Component.dart';
import 'package:angular_demo/src/sub-comp/Sub-Comp.Component.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'app-root',
    templateUrl: 'App.Component.html',
    styleUrls: const ['App.Component.css'],
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      materialDirectives,
      Dart,
      Binding,
      SubComp,
      DirectivasNg,
      Crud,
    ],
    providers: const [
      materialProviders
    ],
)
class AppComponent  {

  final List<Hero> heroes = <Hero>[
    new Hero(1, 'Mr. Nice', 'happy'),
    new Hero(2, 'Narco', 'sad'),
    new Hero(3, 'Windstorm', 'confused'),
    new Hero(4, 'Magneta')
  ];

  var title = 'Demo echo en Angular Dart.';

  void procesarEvento(String value) {

  }


}

class Hero {

  final int id;
  String name;
  String emotion;

  Hero(this.id, this.name, [this.emotion]);

  @override
  String toString() => '$name';
}


