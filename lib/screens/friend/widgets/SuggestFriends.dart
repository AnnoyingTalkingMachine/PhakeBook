import 'dart:ffi';

import 'package:fakebook_frontend/constants/Palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fakebook_frontend/screens/friend/widgets/FriendWidgets.dart';
import 'package:fakebook_frontend/constants/localdata/LocalData.dart';
import 'package:fakebook_frontend/models/Models.dart';

class SuggestFriends extends StatelessWidget {
  final User currentUser;

  const SuggestFriends({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          child: const Text("Gợi ý",
                              style: TextStyle(fontSize: 18)),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(MdiIcons.magnify),
                          iconSize: 26,
                        ),
                      ],
                    )),
                Divider(),
                Padding(
                    padding: const EdgeInsets.fromLTRB(12, 6, 12, 10),
                    child: const Text("Những người bạn có thể biết",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
                Column(
                  children: onlineUsers
                      .map((user) => Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: SuggestContainer(
                              name: user.name, avtUrl: user.imageUrl)))
                      .toList(),
                )
              ]))),
    ));
  }
}
