import 'dart:io';

void main() {
  print('Введите URL:');
  String input = stdin.readLineSync()!;

  Uri uri;
  try {
    uri = Uri.parse(input);
  } catch (e) {
    print('Не правильный URL');
    return;
  }

  print('Протокол: ${uri.scheme}');
  print('Хост: ${uri.host}');
  print('Порт: ${uri.port}');
  print('Путь: ${uri.path}');
  print('Параметры: ${uri.queryParameters}');
}
