import 'dart:html';

import 'package:angular/angular.dart';


@Component(
    selector: 'app-sub-comp',
    template: """ <p>{{subComponentProperty}}</p>
                  <p><button (click)='onClick()'>onClick</button>
              """
)
class SubComp {

  @Input() String subComponentProperty;
  @Output() EventEmitter<String> subComponentEvent = new EventEmitter<String>();

  void onClick() {
    window.alert("Has echo click.");
    //this.subComponentEvent.emit('valor del sub-component');
    //this.subComponentEvent.emit(null);
  }
}