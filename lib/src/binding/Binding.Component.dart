import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';


@Component(
  selector: 'app-binding',
  templateUrl: 'Binding.Component.html',
  styleUrls: const ['Binding.Component.css'],
  directives: const [
    CORE_DIRECTIVES,
    formDirectives,
    materialDirectives
  ],
  providers: const [materialProviders],
)
class Binding {

  String title = 'Angular. Demo';
  String buttonName = 'Mouse event';
  int value = 777;

  int getValue() {
      return this.value;
  }

  void event(String title) {
    this.title = title;
  }

  event2(var msg) {
    print(msg.toString());
  }
}