void main() {
  final int userMoney = 0;
  controlUserMoney(userMoney, 0);
  /*if (userMoney > 5) {
    print("parasi var");
  } else {
    print("parasi yok");
  }*/

  final int user2Money = 5;
  controlUserMoney(user2Money, 5);
  /*if (user2Money > 5) {
    print("parasivar");
  } else {
    print("parasi yok");
  }*/
  //parasını dolar yapmak istiyor
  final newUserMoney = 50;

  print(newUserMoney / 13);

  int result = convertToDolar(newUserMoney, 13);

  print(result);

  // dolar hesaplama yapıp extra bilgi girilmezse 13 almaya devam et

  final newResult = convertToDolar(100, 13);
  final newResult2 = convertToStandartDolar(100);
  final newResult3 = convertToEuro(userMoney: 500);
}

void controlUserMoney(int money, int minimumValue) {
  if (money > 0) {
    print("para var");
  } else {
    print("para yok");
  }
}

int convertToDolar(int userMoney, int dolarIndex) {
  //print(userMoney / 13);
  return userMoney ~/ 13;
  // ~/ double sayıyı tam sayıya çevirir double yazmaya gerek yok
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
  //süslü parantez içinde yazılan veri standartı verilmiştir
  //ister dışarıdan veri gelir isterse standartı kullanılır
  //yani dolar index standart 14 tür.dşardan ister veri gir ister girme
}

int convertToEuro({required int userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}
