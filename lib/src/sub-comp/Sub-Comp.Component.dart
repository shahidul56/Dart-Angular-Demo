import 'dart:html';

import 'package:angular/angular.dart';


@Component(
    selector: 'app-sub-comp',
    template: """ <h3>Input: Del padre hacia el hijo.</h3>
                  <p>{{subComponentProperty}}</p>
                  <h3>Output: Del hijo hacia el padre</h3>
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