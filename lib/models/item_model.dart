class Item {
  final String id;
  final String title;
  final String description;
  final double price;
  final List<String> imageUrls;
  final String sellerId;
  final DateTime datePosted;

  // A category field is useful for filtering
  final String category;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrls,
    required this.sellerId,
    required this.datePosted,
    required this.category,
  });

// In a real app, we would also add methods here to convert this object
// to and from JSON for sending to the AWS backend, for example:
//
// factory Item.fromJson(Map<String, dynamic> json) { ... }
// Map<String, dynamic> toJson() { ... }
}