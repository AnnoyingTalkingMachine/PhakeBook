import 'package:fakebook_frontend/constants/localdata/LocalData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fakebook_frontend/screens/friend/widgets/FriendWidgets.dart';

class FriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Bạn bè",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(MdiIcons.magnify))
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.grey.shade300),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)))),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)
                                      {
                                        return SuggestFriends(currentUser: currentUser);
                                      }));
                                },
                                child: Text('Gợi ý'),
                              )),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.grey.shade300),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)))),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)
                                      {
                                        return AllFriends(currentUser: currentUser);
                                      }));
                                },
                                child: Text('Tất cả bạn bè'),
                              ))
                        ],
                      )),
                  Divider(),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Lời mời kết bạn ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(currentUser.inRequests.length.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red))
                        ],
                      )),
                  Column(
                    children: currentUser.inRequests
                        .map((user) => Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                            child: RequestContainer(
                                name: user.name,
                                avtUrl:
                                    user.imageUrl,
                                timeAgo: "2 giờ")))
                        .toList(),
                  )
                ],
              ),
            )));
  }
}
