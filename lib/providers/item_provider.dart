import 'package.flutter/foundation.dart';
import '../models/item_model.dart';

// This class will be responsible for managing the state of our items.
// It will handle fetching, adding, updating, and deleting items.

class ItemProvider with ChangeNotifier {
  // A private list to hold the items. This is our "state".
  List<Item> _items = [];

  // A public getter to allow other parts of the app to read the items
  // without being able to modify the list directly.
  List<Item> get items => [..._items];

  // --- Placeholder Data ---
  // We'll initialize the provider with our familiar placeholder data,
  // but this time, it's converted into our strongly-typed Item model.
  ItemProvider() {
    _items = [
      Item(
        id: '1',
        title: 'Item Title 1',
        description: 'This is a description for item 1.',
        price: 25.00,
        imageUrls: [],
        sellerId: 'user1',
        datePosted: DateTime.now().subtract(const Duration(days: 1)),
        category: 'Electronics',
      ),
      Item(
        id: '2',
        title: 'Product Name 2',
        description: 'This is a description for item 2.',
        price: 150.50,
        imageUrls: [],
        sellerId: 'user2',
        datePosted: DateTime.now().subtract(const Duration(days: 2)),
        category: 'Furniture',
      ),
      Item(
        id: '3',
        title: 'Placeholder Item 3',
        description: 'This is a description for item 3.',
        price: 99.99,
        imageUrls: [],
        sellerId: 'user3',
        datePosted: DateTime.now().subtract(const Duration(days: 3)),
        category: 'Books',
      ),
    ];
  }

// In a future phase, we will add methods here to interact with AWS, like:
/*
  Future<void> fetchItems() async {
    // 1. Call AWS to get the list of items.
    // 2. Convert the JSON data into a List<Item>.
    // 3. Update the local _items list.
    _items = fetchedItems;
    // 4. Notify all listening widgets that the data has changed,
    //    so they can rebuild.
    notifyListeners();
  }

  Future<void> addItem(Item newItem) async {
    // 1. Call AWS to save the new item.
    // 2. Add the new item to the local _items list.
    _items.add(newItem);
    // 3. Notify listeners to update the UI.
    notifyListeners();
  }
  */
}