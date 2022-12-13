import 'package:fakebook_frontend/models/Models.dart';

final User currentUser = User(
  name: 'Marcus Ng',
  imageUrl:
  'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
  friends: [
    User(
      name: 'Jane Doe',
      imageUrl:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      friends: [
        User(
          name: 'Jane Doe',
          imageUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
          friends: [],
          inRequests: [],
          outRequests: [],
        ),
        User(
          name: 'Jane Doe',
          imageUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
          friends: [],
          inRequests: [],
          outRequests: [],
        ),
      ],
      inRequests: [],
      outRequests: [],
    ),User(
      name: 'Jane Doe',
      imageUrl:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      friends: [],
      inRequests: [],
      outRequests: [],
    ),User(
      name: 'Jane Doe',
      imageUrl:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      friends: [],
      inRequests: [],
      outRequests: [],
    ),User(
      name: 'Jane Doe',
      imageUrl:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      friends: [
        User(
          name: 'Jane Doe',
          imageUrl:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
          friends: [],
          inRequests: [],
          outRequests: [],
        )
      ],
      inRequests: [],
      outRequests: [],
    ),
  ],
  inRequests: [
    User(
      name: 'Jane Doe',
      imageUrl:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      friends: [],
      inRequests: [],
      outRequests: [],
    ),
    User(
      name: 'David Brooks',
      imageUrl:
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      friends: [],
      inRequests: [],
      outRequests: [],
    ),
  ],
  outRequests: [],
);

final List<User> onlineUsers = [
  User(
    name: 'Jane Doe',
    imageUrl:
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'David Brooks',
    imageUrl:
    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Matthew Hinkle',
    imageUrl:
    'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
    ),
  User(
    name: 'Amy Smith',
    imageUrl:
    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Ed Morris',
    imageUrl:
    'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Carolyn Duncan',
    imageUrl:
    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Paul Pinnock',
    imageUrl:
    'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
      name: 'Elizabeth Wong',
      imageUrl:
      'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80',
      friends: [],
      inRequests: [],
      outRequests: [],),
  User(
    name: 'Jane Doe',
    imageUrl:
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'David Brooks',
    imageUrl:
    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Matthew Hinkle',
    imageUrl:
    'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Amy Smith',
    imageUrl:
    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Ed Morris',
    imageUrl:
    'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Carolyn Duncan',
    imageUrl:
    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Paul Pinnock',
    imageUrl:
    'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],
  ),
  User(
    name: 'Elizabeth Wong',
    imageUrl:
    'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80',
    friends: [],
    inRequests: [],
    outRequests: [],),
];