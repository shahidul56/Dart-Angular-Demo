import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_demo/src/binding/Binding.Component.dart';
import 'package:angular_demo/src/directivas_ng/DirectivasNg.Component.dart';
import 'package:angular_demo/src/lenguaje-dart/Dart.Component.dart';
import 'package:angular_demo/src/sub-comp/Sub-Comp.Component.dart';

@Component(
    selector: 'app-root',
    templateUrl: 'App.Component.html',
    styleUrls: const ['App.Component.css'],
    directives: const [Dart, Binding, SubComp,DirectivasNg]
)
class AppComponent {

  var title = 'Demo echo en Angular Dart.';

  void procesarEvento(String value) {
    window.alert(value);
    print(value);
  }

}
