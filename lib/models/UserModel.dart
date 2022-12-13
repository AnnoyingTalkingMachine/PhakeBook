class User {
  final String name;
  final String imageUrl;
  final List<User> friends;
  final List<User> inRequests;
  final List<User> outRequests;

  const User({
    required this.name,
    required this.imageUrl,
    required this.friends,
    required this.inRequests,
    required this.outRequests,
  });
}