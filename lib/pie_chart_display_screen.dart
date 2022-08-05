


// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:pie_chart_with_animation/indicator.dart';

// class ScatterChartPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _ScatterChartPageState();
// }

// class _ScatterChartPageState extends State {
//   int touchedIndex;
//   Color greyColor = Colors.grey;
//   List<int> selectedSpots = [];
//   int lastPanStartOnIndex = -1;
//   double _height;
//   double _width;
//   @override
//   Widget build(BuildContext context) {
//     _width = MediaQuery.of(context).size.width;
//     _height = MediaQuery.of(context).size.height;
//   return AspectRatio(
//       aspectRatio: 1.3,
//       child: Card(
//         color: Colors.white,
//         child: Row(
//           children: <Widget>[
//             const SizedBox(
//               height: 18,
//             ),
//             Expanded(
//               child: AspectRatio(
//                 aspectRatio: 1,
//                 child: PieChart(
//                   PieChartData(
//                 pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
//                   setState(() {
//                     if (pieTouchResponse.touchInput is FlLongPressEnd ||
//                         pieTouchResponse.touchInput is FlPanEnd) {
//                       touchedIndex = -1;
//                     } else {
//                       touchedIndex = pieTouchResponse.touchedSectionIndex;
//                     }
//                   });
//                 }),
//                 borderData: FlBorderData(
//                   show: false,
//                 ),
//                 sectionsSpace: 0,
//                 centerSpaceRadius: 60,
//                 sections: showingSections()),
//           ),
//         ),
//       ),
//        Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const <Widget>[
//                 Indicator(
//                   color: Color(0xff0293ee),
//                   text: 'First',
//                   isSquare: true,
//                 ),
//                 SizedBox(
//                   height: 4,
//                 ),
//                 Indicator(
//                   color: Color(0xfff8b250),
//                   text: 'Second',
//                   isSquare: true,
//                 ),
//                 SizedBox(
//                   height: 4,
//                 ),
//                 Indicator(
//                   color: Color(0xff845bef),
//                   text: 'Third',
//                   isSquare: true,
//                 ),
//                 SizedBox(
//                   height: 4,
//                 ),
//                 Indicator(
//                   color: Color(0xff13d38e),
//                   text: 'Fourth',
//                   isSquare: true,
//                 ),
//                 SizedBox(
//                   height: 18,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               width: 28,
//             ),
//           ],
//         ),
//       ),
    
//     );
//   }
//  List<PieChartSectionData> showingSections() {
//     return List.generate(4, (i) {
//       final isTouched = i == touchedIndex;
//       final fontSize = isTouched ? 25.0 : 16.0;
//       final radius = isTouched ? 60.0 : 50.0;
//       switch (i) {
//         case 0:
//           return PieChartSectionData(
//             color: const Color(0xff0293ee),
//             value: 40,
//             title: '40%',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
//           );
//         case 1:
//           return PieChartSectionData(
//             color: const Color(0xfff8b250),
//             value: 30,
//             title: '30%',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
//           );
//         case 2:
//           return PieChartSectionData(
//             color: const Color(0xff845bef),
//             value: 15,
//             title: '15%',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
//           );
//         case 3:
//           return PieChartSectionData(
//             color: const Color(0xff13d38e),
//             value: 15,
//             title: '15%',
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
//           );
//         default:
//           throw Error();
//       }
//     });
//   }
// }
