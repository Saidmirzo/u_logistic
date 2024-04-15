// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:vodiy_savdo/config/enums/bloc_status.dart';

// class BuildBodyWidget extends StatelessWidget {
//   const BuildBodyWidget({
//     super.key,
//     required this.blocStatus,
//     required this.succesWidget,
//   });
//   final BlocStatus blocStatus;
//   final Widget succesWidget;

//   @override
//   Widget build(BuildContext context) {
//     return Builder(
//       builder: (context) {
//         if (blocStatus == BlocStatus.inProgress) {
//           return SizedBox(
//             height: 160.h,
//             child: const Center(child: CircularProgressIndicator()),
//           );
//         } else if (blocStatus == BlocStatus.connectionFailed) {
//           return const Center(
//             child: Text("connection failure"),
//           );
//         } else if (blocStatus == BlocStatus.completed) {
//           return succesWidget;
//         } if(blocStatus==BlocStatus.notInitialized){
//           return  const Center(
//             child: Text('Wait...'),
//           );
//         }
//         else {
//           return const Center(
//             child: Text('Server failure'),
//           );
//         }
//       },
//     );
//   }
// }
