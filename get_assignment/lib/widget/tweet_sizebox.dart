import 'package:flutter/material.dart';
import 'package:get_assignment/data_layer/tweets_data.dart';
import 'package:get_assignment/helper/screen_size.dart';
import 'package:get_it/get_it.dart';


class tweets extends StatefulWidget {
  const tweets(
      {super.key, required this.text, this.controller, required this.id, required this.onDelete});
  final TextEditingController? controller;
  final String text;
  final int id;
  final VoidCallback onDelete;

  @override
  State<tweets> createState() => _tweetsState();
}

class _tweetsState extends State<tweets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.getWidth(divide: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.text),
            IconButton(
                onPressed: () {
                  GetIt.I.get<TweetsData>().deleteTweet(id: widget.id);
                  widget.onDelete();  // Trigger the parent state update
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ));
  }
}





// class tweets extends StatefulWidget {
//   const tweets(
//       {super.key, required this.text, this.controller, required this.id});
//   final TextEditingController? controller;
//   final String text;
//   final int id;
  
//   @override
//   State<tweets> createState() => _tweetsState();
// }

// class _tweetsState extends State<tweets> {
//   // Add this line to accept tweet ID
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: context.getWidth(divide: 1),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(widget.text),
//             IconButton(
//                 onPressed: () {
//                   setState(() {
//                     GetIt.I.get<TweetsData>().deleteTweet(id: widget.id);
//                   });
//                   //  GetIt.I
//                   // .get<TweetsData>()
//                   // .deleteTweet(id: id);
//                   //   (context as Element).markNeedsBuild();
//                   //  GetIt.I.get<TweetsData>().deleteTweet(id: e.id);
//                   // GetIt.I.get<TweetsData>().removeTweet(id: id);
//                 },
//                 icon: const Icon(
//                   Icons.delete,
//                   color: Colors.red,
//                 ))
//           ],
//         ));
//   }
// }
