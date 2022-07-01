void main() {
  Map<String, int> users = {'ahmet': 20, 'mehmet': 30};

  print('ahmetin parası ${users['ahmet']}'); //ahmetin parası 20

  for (var item in users.keys) {
    print('${item} - ${users[item]}'); // ahmet-20 , mehmet-30
  }

  for (var i = 0; i < users.length; i++) {
    print(
        '${users.keys.elementAt(i)} - ${users.values.elementAt(i)}'); // ahmet-20 , mehmet-30
  }

  //musterilerin birden fazla hesabı olabilir.
  // ahmet 3 hesabı var 100,300,200
  //mehmet 2 hesabı var 30 50
  // veli 1 hesap 30
  //hesapta 150 den fazla varsa krediniz hazır uyarısı gelcek

  final Map<String, List<int>> vbBank = {
    'ahmet': [100, 300, 200]
  }; //2 farklı kullanım şekli
  vbBank['mehmet'] = [30, 50];
  vbBank['veli'] = [30];

  for (var item in vbBank.keys) {
    //bankanın tüm elemanları
    for (var money in vbBank[item]!) {
      //user hesapları dolasma
      if (money > 150) {
        print('kredin hazır');
        break; // break direk bu scope u sonlandırır
        // eğer return yazsaydık aşağıdaki printi göremezdik
        // 2 kere kredin hazır yazısını kaldırmak için break yazdık
      }
    }
  }
//tüm müşterilerin toplam meblağsı
  for (var name in vbBank.keys) {
    // vbBank[item]! -> müşterilerin hesapları
    int result = 0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }
    print('$name senin toplam paran --> $result');
  }
}
