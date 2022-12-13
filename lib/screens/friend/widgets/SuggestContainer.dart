import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fakebook_frontend/constants/Palette.dart';
import 'package:fakebook_frontend/models/Models.dart';


class SuggestContainer extends StatelessWidget {
  final String name;
  final String avtUrl;
  const SuggestContainer({Key? key, required this.name,required this.avtUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 100,
      // child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 8, 5),
              child: CircleAvatar(
                radius: 50,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 6, 2),
                        child: OutlinedButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Palette.facebookBlue)
                          ),
                          onPressed: () {
                            // acceptConfirmation(context);
                          },
                          child: Text('Thêm bạn bè',
                                      style: TextStyle(fontWeight: FontWeight.bold)),
                        ))),

                      Expanded(child: Padding(
                        padding: const EdgeInsets.fromLTRB(6, 0, 0, 2),
                        child: OutlinedButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
                          ),
                          onPressed: () {
                            // rejectConfirmation(context);
                          },
                          child: Text('Gỡ'),
                        ))),
                    ],
                  )
                ],
              )
            )
          ],
        ),
    );

  }

//   void acceptConfirmation(BuildContext context)
//   {
//     showDialog(
//         context: context,
//         builder: (BuildContext context)
//         {
//           return AlertDialog(
//             title: const Text('Chấp nhận lời mời kết bạn?'),
//             actions: [
//               OutlinedButton(
//                 style: ButtonStyle(
//                     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                     backgroundColor: MaterialStateProperty.all<Color>(Palette.facebookBlue)
//                 ),
//                 onPressed: () {
//                   //TODO: Xử lý sau
//                   Navigator.pop(context);
//                 },
//                 child: Text('Xác nhận',
//                     style: TextStyle(fontWeight: FontWeight.bold)),
//               ),
//               OutlinedButton(
//                 style: ButtonStyle(
//                     foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
//                     backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
//                 ),
//                 onPressed: () {
//                   //TODO: Xử lý sau
//                   Navigator.pop(context);
//                 },
//                 child: Text('Hủy'),
//               )
//             ],
//           );
//         }
//     );
//   }
//
//   void rejectConfirmation(BuildContext context)
//   {
//     showDialog(
//         context: context,
//         builder: (BuildContext context)
//         {
//           return AlertDialog(
//               title: const Text('Xóa lời mời kết bạn?'),
//               actions: [
//                 OutlinedButton(
//                   style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
//                       backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
//                   ),
//                   onPressed: () {
//                     //TODO: Xử lý sau
//                     Navigator.pop(context);
//                   },
//                   child: Text('Xác nhận',
//                       style: TextStyle(fontWeight: FontWeight.bold)),
//                 ),
//                 OutlinedButton(
//                   style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
//                       backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade200)
//                   ),
//                   onPressed: () {
//                     //TODO: Xử lý sau
//                     Navigator.pop(context);
//                   },
//                   child: Text('Hủy'),
//                 )
//               ],
//               );
//         }
//     );
//   }
}
