import 'package:angular2/angular2.dart';

@Component(
    selector: 'child-component',
    templateUrl: 'child_component.html')
class ChildComponent {
  @Input() String myString;

  @Output() EventEmitter clicked = new EventEmitter();

  void handleClickEvent(data) {
    clicked.emit(data);
  }
}