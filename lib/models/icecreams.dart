class IceCreamModel {
  static final items = [
    Item(
        id: 1,
        name: "Cup",
        desc: "A cup of Icecream",
        price: 10,
        color: "#33505a",
        image:
            "https://images.unsplash.com/photo-1534706936160-d5ee67737249?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1534&q=80")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}