import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fakebook_frontend/constants/Palette.dart';
import 'package:fakebook_frontend/models/Models.dart';


class FriendContainer extends StatelessWidget {
  final String name;
  final String avtUrl;
  final int mutualCount;
  const FriendContainer({Key? key, required this.name,required this.avtUrl,required this.mutualCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 80,
      // child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 12, 5),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: CachedNetworkImageProvider(avtUrl),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
                    child: Text(name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                  Visibility(
                      visible: (mutualCount != 0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                        child: Row(
                          children: [
                            Text(mutualCount.toString(),
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Palette.grey1, fontSize: 16)),
                            Text(" bạn chung",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Palette.grey1, fontSize: 16))
                          ]
                        ),
                      ))
                ],
              )
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                child: IconButton(
                  icon: const Icon(MdiIcons.dotsHorizontal),
                  onPressed: () {},
                ),)
          ],
        ),
    );

  }

  // void acceptConfirmation(BuildContext context)
  // {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext context)
  //       {
  //         return Container(
  //             color: Colors.white,
  //             height: 150,
  //             child: Center(
  //                 child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     crossAxisAlignment: CrossAxisAlignment.center,
  //                     children: [
  //                       Padding(
  //                         padding: const EdgeInsets.symmetric(vertical: 12),
  //                         child: Text("Chấp nhận lời mời kết bạn?",
  //                                     style: TextStyle(fontSize: 20)),
  //                       ),
  //                       Divider(),
  //                       Padding(
  //                         padding: const EdgeInsets.symmetric(horizontal: 12),
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           crossAxisAlignment: CrossAxisAlignment.end,
  //                           children: [
  //                             Expanded(child: Padding(
  //                                 padding: const EdgeInsets.fromLTRB(0, 0, 6, 2),
  //                                 child: OutlinedButton(
  //                                   style: ButtonStyle(
  //                                       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  //                                       backgroundColor: MaterialStateProperty.all<Color>(Palette.facebookBlue)
  //                                   ),
  //                                   onPressed: () {
  //                                     //TODO: Xử lý sau
  //                                     Navigator.pop(context);
  //                                   },
  //                                   child: Text('Xác nhận',
  //                                       style: TextStyle(fontWeight: FontWeight.bold)),
  //                                 ))),
  //
  //                             Expanded(child: Padding(
  //                                 padding: const EdgeInsets.fromLTRB(6, 0, 0, 2),
  //                                 child: OutlinedButton(
  //                                   style: ButtonStyle(
  //                                       foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
  //                                       backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
  //                                   ),
  //                                   onPressed: () {
  //                                     //TODO: Xử lý sau
  //                                     Navigator.pop(context);
  //                                   },
  //                                   child: Text('Hủy'),
  //                                 ))),
  //                           ],
  //                         ),
  //                       )
  //                     ]
  //                 )));
  //       }
  //   );
  // }

  void acceptConfirmation(BuildContext context)
  {
    showDialog(
        context: context,
        builder: (BuildContext context)
        {
          return AlertDialog(
            title: const Text('Chấp nhận lời mời kết bạn?'),
            actions: [
              OutlinedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Palette.facebookBlue)
                ),
                onPressed: () {
                  //TODO: Xử lý sau
                  Navigator.pop(context);
                },
                child: Text('Xác nhận',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              OutlinedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
                ),
                onPressed: () {
                  //TODO: Xử lý sau
                  Navigator.pop(context);
                },
                child: Text('Hủy'),
              )
            ],
          );
        }
    );
  }

  void rejectConfirmation(BuildContext context)
  {
    showDialog(
        context: context,
        builder: (BuildContext context)
        {
          return AlertDialog(
              title: const Text('Xóa lời mời kết bạn?'),
              actions: [
                OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
                  ),
                  onPressed: () {
                    //TODO: Xử lý sau
                    Navigator.pop(context);
                  },
                  child: Text('Xác nhận',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
                  ),
                  onPressed: () {
                    //TODO: Xử lý sau
                    Navigator.pop(context);
                  },
                  child: Text('Hủy'),
                )
              ],
              );
        }
    );
  }
}
