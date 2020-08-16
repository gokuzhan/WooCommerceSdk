import 'dart:math';

import 'package:ansicolor/ansicolor.dart';

/// Due to missing sprintf(), this is my cheap "%03d".
String toSpace(int i, [int width = 3]) {
  if (width <= 0 && i == 0) return "";
  return "${toSpace(i ~/ 10, --width)}${i % 10}";
}

class ConsoleLog {
  AnsiPen pen = new AnsiPen();
  AnsiPen url = new AnsiPen();
  AnsiPen param = new AnsiPen();

  AnsiPen method(String method) {
    AnsiPen pen = new AnsiPen();
    String _m = method.toLowerCase();
    switch (_m) {
      case 'get':
        return pen
          ..reset()
          ..rgb(r: 1, g: 1, b: 1)
          ..xterm(041, bg: true);
        break;
      case 'post':
        return pen
          ..reset()
          ..rgb(r: 1, g: 1, b: 1)
          ..xterm(033, bg: true);
        break;
      case 'put':
        return pen
          ..reset()
          ..rgb(r: 1, g: 1, b: 1)
          ..xterm(037, bg: true);
        break;
      case 'patch':
        return pen
          ..reset()
          ..rgb(r: 1, g: 1, b: 1)
          ..xterm(242, bg: true);
        break;
      case 'delete':
        return pen
          ..reset()
          ..rgb(r: 1, g: 1, b: 1)
          ..xterm(203, bg: true);
        break;
      default:
        break;
    }

    return pen;
  }

  num get _sizeOfMethod => 5;

  num get _spacing => 1;

  ConsoleLog() {
    url
      ..reset()
      ..xterm(237)
      ..xterm(254, bg: true);
    param
      ..rgb(r: 1, g: 1, b: 1)
      ..xterm(203, bg: true);
  }

  get httpGet => (String text) {
        AnsiPen _method = method('Get');
        StringBuffer paramHighlighted = new StringBuffer();

        paramHighlighted.write(_highLightParams(text, _method));

        return pen(_narrator(_requestId()) +
            _method(" GET ") +
            _narrator('👉👉') +
            _paddedString(paramHighlighted.toString(), url) +
            "\n");
      };

  get httpPost => (String text) {
        AnsiPen _method = method('Post');
        StringBuffer paramHighlighted = new StringBuffer();

        paramHighlighted.write(_highLightParams(text, _method));

        return pen(_method(" POST ") +
            _narrator('👉👉') +
            _paddedString(paramHighlighted.toString(), url) +
            "\n");
      };

  get httpPut => (String text) {
        AnsiPen _method = method('Put');
        StringBuffer paramHighlighted = new StringBuffer();

        paramHighlighted.write(_highLightParams(text, _method));

        return pen(_method(" PUT ") +
            _narrator('👉👉') +
            _paddedString(paramHighlighted.toString(), url) +
            "\n");
      };

  get httpPatch => (String text) {
        AnsiPen _method = method('Patch');
        StringBuffer paramHighlighted = new StringBuffer();

        paramHighlighted.write(_highLightParams(text, _method));

        return pen(_method(" PATCH ") +
            _narrator('👉👉') +
            _paddedString(paramHighlighted.toString(), url) +
            "\n");
      };

  get httpDelete => (String text) {
        AnsiPen _method = method('delete');

        StringBuffer paramHighlighted = new StringBuffer();

        paramHighlighted.write(_highLightParams(text, _method));

        return pen(_method(" DELETE ") +
            _narrator('👉👉') +
            _paddedString(paramHighlighted.toString(), url) +
            "\n");
      };

  String _paddedString(String text, AnsiPen pen) {
    num _leftPad = text.length + _spacing;
    num _rightPad = _leftPad <= _sizeOfMethod
        ? _leftPad + (_sizeOfMethod - _leftPad) + (_spacing * 2)
        : _leftPad + _spacing;
    return pen(text.padLeft(_leftPad, pen(' ')).padRight(_rightPad, pen(' ')));
  }

  String _highLightParams(String text, AnsiPen method) {
    return text
        .split('/')
        .map((e) => e.startsWith(':') ? url(method('$e')) : url(e))
        .join(url('/'))
        .toString();
  }

  String _narrator(String sep) =>
      (new AnsiPen()..xterm(237, bg: true))(' $sep ');

  String _requestId() {
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random _rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        6, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  }
}
