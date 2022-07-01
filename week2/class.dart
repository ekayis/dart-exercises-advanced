void main() {
  //listeye null bir data gelmesi için aşaıdaji gibi tanımlanmalı
  List<int?> customerMoneys = [100, null, 0];
  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('beyfendi');
      } else {
        print('byy');
      }
    } else {
      print('haydi hesap açalım');
    }
  }

  User user1 = User('vb', 15, 21, 'aa'); // sınıf örneği
  print(user1.name);
}

class User {
  //ozellikleri neler
  //soru  işaretini null dönebilir diyerekten koyduk
  //String? name;
  late String name;
  late int money;
  late int age;
  late String city;

  User(String name, int money, int age, String city) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
  }
}
