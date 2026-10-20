class Coffee {
  String name;
  double price;
  String size;

  int _stock;
  Coffee(this.name, this.price, this.size, this._stock);

  void displayInfo() {
    print('Coffee Name: $name');
    print('Price: PHP ${price.toStringAsFixed(2)}');
    print('Size: $size');
    print('Available Stock: $_stock');
  }

  void buyCoffee(int quantity) {
    if (quantity <= 0) {
      print('Invalid quantity. Please enter a positive number.');
    } else if (quantity > _stock) {
      print('Sorry, not enough stock for $name.');
    } else {
      _stock -= quantity;
      double total = price * quantity;

      print('Successfully purchased $quantity $name.');
      print('Total Price: PHP ${total.toStringAsFixed(2)}');
    }
  }

  int get stock => _stock;
}

void main() {
  Coffee coffee1 = Coffee('Iced Latte', 129.00, 'Medium', 10);
  Coffee coffee2 = Coffee('Caramel Macchiato', 159.00, 'Large', 8);

  List<Coffee> coffeeMenu = [coffee1, coffee2];

  print('================================');
  print('       COFFEE SHOP MENU');
  print('================================');

  for (Coffee coffee in coffeeMenu) {
    print('');
    coffee.displayInfo();
    print('--------------------------------');
  }

  print('\n===== CUSTOMER PURCHASE =====');
  coffee1.buyCoffee(2);

  print('\n===== UPDATED STOCK =====');
  print('${coffee1.name} remaining stock: ${coffee1.stock}');
  print('${coffee2.name} remaining stock: ${coffee2.stock}');

  print('\n===== STOCK VALIDATION TEST =====');
  coffee2.buyCoffee(20);
}
