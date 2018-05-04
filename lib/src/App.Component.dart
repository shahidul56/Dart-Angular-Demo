import 'package:angular/angular.dart';
import 'package:angular_demo/src/router/Route1.Component.dart';
import 'package:angular_demo/src/router/Route2.Component.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'package:angular_demo/src/binding/Binding.Component.dart';
import 'package:angular_demo/src/crud/Crud.Component.dart';
import 'package:angular_demo/src/directivas_ng/DirectivasNg.Component.dart';
import 'package:angular_demo/src/lenguaje-dart/Dart.Component.dart';
import 'package:angular_demo/src/sub-comp/Sub-Comp.Component.dart';



@Component(
    selector: 'app-root',
    templateUrl: 'App.Component.html',
    styleUrls: const ['App.Component.css'],
    directives: const [
      CORE_DIRECTIVES,
      formDirectives,
      materialDirectives,
      ROUTER_DIRECTIVES,
      Dart,
      Binding,
      SubComp,
      DirectivasNg,
      Crud
    ],
    providers: const [
      materialProviders,
      ROUTER_PROVIDERS
    ],
)
@RouteConfig(const [
  const Route(path: '/route1', component: Route1, name: '1'),
  const Route(path: '/route2', component: Route2, name: '2')
])
class AppComponent  {

  final List<Hero> heroes = <Hero>[
    new Hero(1, 'Mr. Nice', 'happy'),
    new Hero(2, 'Narco', 'sad'),
    new Hero(3, 'Windstorm', 'confused'),
    new Hero(4, 'Magneta')
  ];

  final String title = 'Demo echo en Angular Dart.';

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


