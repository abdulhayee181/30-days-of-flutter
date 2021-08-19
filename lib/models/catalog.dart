class CatalogModel {
  static final items = [
    Item(1, "red", "I phone 12", "i phone boht chnga hai", 999, "https://freepngimg.com/thumb/samsung_mobile_phone/5-2-samsung-mobile-phone-png-hd.png"),
  ];
}

class Item {
  final int id;
  final String color;
  final String name;
  final String desc;
  final num price;
  final String iamge;

  Item(this.id, this.color, this.name, this.desc, this.price, this.iamge);
}
