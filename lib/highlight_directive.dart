import 'package:angular2/angular2.dart';

@Directive(
    selector: '[myHighlight]',
    host: const {
      '(mouseenter)': 'onMouseEnter()',
      '(mouseleave)': 'onMouseLeave()'
    }
)
class HighlightDirective {
  ElementRef el;
  @Input('myHighlight') String myColor;
  @Input('defaultColor') String defaultColor;
  HighlightDirective(ElementRef _el) {
    el = _el;
  }

  onMouseEnter() {
    var theColor;
    if(myColor != null) {
      theColor = myColor;
    } else {
      theColor = defaultColor;
    }
    _highlight(theColor);
  }

  onMouseLeave() {
    _highlight(null);
  }

  _highlight(String color) {
    el.nativeElement.style.backgroundColor = color;
  }
}