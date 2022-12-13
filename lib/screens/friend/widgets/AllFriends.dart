import 'dart:ffi';

import 'package:fakebook_frontend/constants/Palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fakebook_frontend/screens/friend/widgets/FriendWidgets.dart';
import 'package:fakebook_frontend/constants/localdata/LocalData.dart';
import 'package:fakebook_frontend/models/Models.dart';

class AllFriends extends StatelessWidget {
  final User currentUser;

  const AllFriends({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                  color: Colors.white,
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(MdiIcons.arrowLeftThick),
                              iconSize: 23,
                            ),
                            Expanded(
                              child: const Text("Tất cả bạn bè",
                                  style: TextStyle(fontSize: 18)),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(MdiIcons.magnify),
                              iconSize: 26,
                            ),
                          ],
                        )),
                    Divider(
                      height: 1,
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(currentUser.friends.length.toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Expanded(
                              child: const Text(" bạn bè",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold)),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Sắp xếp",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Palette.facebookBlue)))
                          ],
                        )),
                    Column(
                      children: currentUser.friends
                          .map((user) => Padding(
                              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                              child: FriendContainer(
                                  name: user.name,
                                  avtUrl: user.imageUrl,
                                  //TODO: Đoạn này viết cho vui, sẽ phải sửa sau
                                  mutualCount: user.friends.length)))
                          .toList(),
                    )
                  ]))),
        ));
  }
}
