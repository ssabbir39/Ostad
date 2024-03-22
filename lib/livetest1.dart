void main() {

  List<Map<String, dynamic>> fruits = [
    {"Name": "Apple", "Color": "Red", "Price": 2.5},
    {"Name": "Banana", "Color": "Yellow", "Price": 1.0},
    {"Name": "Grapes", "Color": "Purple", "Price": 3.0}
  ];

  print("original fruit details before discount:");
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print("\nfruit details after applying 10% discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit['Name']}, Color: ${fruit['Color']}, Price: \$${fruit['Price'].toStringAsFixed(2)}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double price = fruit['Price'];
    double discountedPrice = price - (price * (discountPercentage / 100));
    fruit['Price'] = discountedPrice;
  }
}
