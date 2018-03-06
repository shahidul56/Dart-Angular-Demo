import 'package:angular/angular.dart';


@Component(
  selector: 'app-binding',
  templateUrl: 'Binding.Component.html',
  styleUrls: const ['Binding.Component.css'],
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