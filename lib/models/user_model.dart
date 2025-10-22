class User {
  final String id; // This will likely be the unique ID from Cognito
  final String fullName;
  final String matricsId;
  final String profileImageUrl;

  // A field for the user's role is crucial for our admin logic
  final String role; // e.g., 'user' or 'admin'

  User({
    required this.id,
    required this.fullName,
    required this.matricsId,
    required this.profileImageUrl,
    required this.role,
  });

// As with the Item model, we would add JSON conversion methods here
// for backend communication in a later phase.
//
// factory User.fromJson(Map<String, dynamic> json) { ... }
// Map<String, dynamic> toJson() { ... }
}