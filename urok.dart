import 'dart:io';

void main() {
  menu();
}

void menu() {
  bool cikle = false;
  while (cikle != true) {
    print(
        '\n\nЕсли хотите узнать Курс на сегодня нажмите 1\nЕсли хотите обменть Введите 2\nЕсли хотите выйти ввеите 3');
    String? a = stdin.readLineSync();
    switch (a) {
      case '1':
        scorboard();
        break;
      case '2':
        valuta();
        break;
      case '3':
        cikle = true;
        break;
      default:
        cikle = true;
        break;
    }
  }
}

class CursValut {
  static double usd = 84.80;
  static double eur = 98.10;
  static double rub = 1.180;
  static double kzt = 0.1960;
  static double cny = 12;

  String? printInfoValut() {
    print('USD: $usd EUR: $eur RUB:$rub KZT:$kzt CNY: $cny');
  }
}

//Таблица принимает класс
String scorboard() {
  print(
      'USD  ${CursValut.usd}\nEUR  ${CursValut.eur}\nRUB  ${CursValut.rub}\nCNY  ${CursValut.cny}\KZT  ${CursValut.kzt}');
  return '';
}

void valuta() {
  double res1;

  print(
      'Хотите обменять другую валюту на сом=1\nХотите обменять сом на другую валюту=2\nВвод:');

  dynamic prinyt = stdin.readLineSync();

  if (prinyt == '1') {
    print('Выберите валюту:\nUSD-1\nEUR-2\nRUB-3\nKZT-4\nCNY-5\nВвод:');

    dynamic valut = stdin.readLineSync();
    switch (valut) {
      case '1':
        print('Сколько Долларов вы хотите поменять на Сом:');
        dynamic som1 = stdin.readLineSync();

        dynamic som = int.parse(som1);
        res1 = som * CursValut.usd;

        print('Обмен:$som USD на $res1 SOM');
        break;
      case '2':
        print('Сколько Евро вы хотите поменять на Сом:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * CursValut.eur;
        print('Обмен:$som EUR на $res1 SOM');
        break;
      case '3':
        print('Сколько Рублей вы хотите поменять на Сом:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * CursValut.rub;
        print('Обмен:$som RUB на $res1 SOM');
        break;
      case '5':
        print('Сколько Китайских юаньей вы хотите поменять на Сом:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * CursValut.cny;
        print('Обмен:$som CNY на $res1 SOM');
        break;
      case '4':
        print('Сколько Тенге вы хотите поменять на Сом:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * CursValut.kzt;
        print('Обмен:$som KZT на $res1 SOM');
        break;
      default:
        print('Не правильно написали! Попробуйте еще.');
        break;
    }
  } else if (prinyt == '2') {
    print('Выберите валюту:\nUSD-1\nEUR-2\nRUB-3\nKZT-4\nCNY-5 \n Ввод:');
    dynamic valut = stdin.readLineSync();
    switch (valut) {
      case '1':
        print('Сколько SOM вы хотите обменять на USD:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / CursValut.usd;
        String res2 = res1.toStringAsFixed(2);
        print('Обмен:$som SOM на $res2 USD');
        break;
      case '2':
        print('Сколько SOM вы хотите обменять на EUR:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / CursValut.eur;
        String res2 = res1.toStringAsFixed(2);
        print('Обмен:$som SOM на $res2 EUR');
        break;
      case '3':
        print('Сколько SOM вы хотите обменять на RUB:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / CursValut.rub;
        String res2 = res1.toStringAsFixed(2);
        print('Обмен:$som SOM на $res2 RUB');
        break;
      case '5':
        print('Сколько SOM вы хотите обменять на CNY:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / CursValut.cny;
        String res2 = res1.toStringAsFixed(2);
        print('Обмен:$som RUB на $res2 CNY');
        break;
      case '4':
        print('Сколько SOM вы хотите обменять на KZT:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / CursValut.kzt;
        String res2 = res1.toStringAsFixed(2);
        print('Обмен:$som SOM на $res2 KZT');
        break;
      default:
        print('Не правильно ввели данные! Попробуйте еще.');
        break;
    }
  } else {
    print('Не правильно ввели данные! Попробуйте еще');
  }
  print('\n');
}
