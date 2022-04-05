// import 'package:flutter/material.dart';
// import 'package:stacked_notification_cards/stacked_notification_cards.dart';
// import 'package:kitchen_app/components/bottomnav.dart';

// class AList extends StatefulWidget {
//   const AList({Key? key}) : super(key: key);

//   @override
//   State<AList> createState() => _AListState();
// }

// class _AListState extends State<AList> {
//   @override
//   List<NotificationCard> _listOfNotification = [
//     NotificationCard(
//       date: DateTime.now(),
//       leading: Icon(
//         Icons.account_circle,
//         size: 48,
//       ),
//       title: 'Person  1',
//       subtitle: '4 Zinger Burger with Frie and drink.',
//     ),
//     NotificationCard(
//       date: DateTime.now().subtract(
//         const Duration(minutes: 4),
//       ),
//       leading: Icon(
//         Icons.account_circle,
//         size: 48,
//       ),
//       title: 'Person  2',
//       subtitle: '4 Zinger Burger with Frie and drink.',
//     ),
//     NotificationCard(
//       date: DateTime.now().subtract(
//         const Duration(minutes: 10),
//       ),
//       leading: Icon(
//         Icons.account_circle,
//         size: 48,
//       ),
//       title: 'Person  3',
//       subtitle: '4 Zinger Burger with Frie and drink.',
//     ),
//     NotificationCard(
//       date: DateTime.now().subtract(
//         const Duration(minutes: 30),
//       ),
//       leading: Icon(
//         Icons.account_circle,
//         size: 48,
//       ),
//       title: 'Person  4',
//       subtitle: '4 Zinger Burger with Frie and drink.',
//     ),
//     NotificationCard(
//       date: DateTime.now().subtract(
//         const Duration(minutes: 44),
//       ),
//       leading: Icon(
//         Icons.account_circle,
//         size: 48,
//       ),
//       title: 'Person 5',
//       subtitle: '4 Zinger Burger with Frie and drink.',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             icon: Image.asset(
//               'assets/peng.png',
//               height: 80,
//               width: 80,
//             ),
//             onPressed: () {},
//           ),
//         ],
//         backgroundColor: Colors.purple.shade700,
//         iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//       ),
//       bottomNavigationBar: Mynav(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             StackedNotificationCards(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.25),
//                   blurRadius: 2.0,
//                 )
//               ],
//               notificationCardTitle: 'Order History',
//               notificationCards: [..._listOfNotification],
//               cardColor: Color(0xFFF1F1F1),
//               padding: 16,
//               actionTitle: Text(
//                 'Order List',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               showLessAction: Text(
//                 'Show less',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.deepPurple,
//                 ),
//               ),
//               onTapClearAll: () {
//                 setState(() {
//                   _listOfNotification.clear();
//                 });
//               },
//               clearAllNotificationsAction: Icon(Icons.close),
//               clearAllStacked: Text('Clear All'),
//               cardClearButton: Text('clear'),
//               cardViewButton: Text('view'),
//               onTapClearCallback: (index) {
//                 print(index);
//                 setState(() {
//                   _listOfNotification.removeAt(index);
//                 });
//               },
//               onTapViewCallback: (index) {
//                 print(index);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
