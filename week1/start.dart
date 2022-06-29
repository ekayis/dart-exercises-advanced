void main(List<String> args) {
  final int money1 = 100;
  final int money2 = 110;

  if (money1 > 100) {
    print('adam');
  }

  if (money2 > 100) {
    print('aa');
  }

  List<int> moneys = [100, 110, 500];

  print('musteri 1 parası: ${moneys[0]}');

  moneys.sort();
  moneys.add(5);
  moneys.insert(2, 300); //2. sırayı 300 ekler
  print(moneys);

  //100 müşteri sırasına göre 5 tl ekle

  /* List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);*/
}
