import 'package:angular2/angular2.dart';

@Component(
    selector: 'child-component',
    templateUrl: 'child_component.html')
class ChildComponent {
  @Input() String myString;
  String myData = "";

  @Output() EventEmitter clicked = new EventEmitter();

  void handleClickEvent() {
    clicked.emit(myData);
  }

  void handleClickEvent2(data) {
    clicked.emit(data);
  }
}