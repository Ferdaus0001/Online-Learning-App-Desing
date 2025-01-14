// import 'package:flutter/material.dart';
// import 'package:flutter_reaction_button/flutter_reaction_button.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Reaction Button',
//       home: ReactionButtonExample(),
//     );
//   }
// }
//
// class ReactionButtonExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Reaction Button Example'),
//       ),
//       body: Center(
//         child: FlutterReactionButtonCheck(
//           onReactionChanged: (reaction, index, isChecked) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('Selected: ${reaction?.value}')),
//             );
//           },
//           reactions: [
//             Reaction<String>(
//               value: 'Like',
//               icon: _buildIcon(Icons.thumb_up, Colors.blue, 'Like'),
//             ),
//             Reaction<String>(
//               value: 'Love',
//               icon: _buildIcon(Icons.favorite, Colors.red, 'Love'),
//             ),
//             Reaction<String>(
//               value: 'Wow',
//               icon: _buildIcon(Icons.star, Colors.amber, 'Wow'),
//             ),
//             Reaction<String>(
//               value: 'Haha',
//               icon: _buildIcon(Icons.face, Colors.orange, 'Haha'),
//             ),
//             Reaction<String>(
//               value: 'Sad',
//               icon: _buildIcon(Icons.face, Colors.grey, 'Sad'),
//             ),
//           ],
//           initialReaction: Reaction<String>(
//             value: 'Like',
//             icon: _buildIcon(Icons.thumb_up, Colors.blue, 'Like'),
//           ),
//           boxRadius: 10,
//           boxColor: Colors.black.withOpacity(0.5),
//           itemSize: const Size(40, 40),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildIcon(IconData icon, Color color, String label) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(icon, color: color, size: 24),
//         const SizedBox(width: 8),
//         Text(label, style: TextStyle(color: color, fontSize: 16)),
//       ],
//     );
//   }
// }
