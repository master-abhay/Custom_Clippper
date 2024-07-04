import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Center(
      child: ClipPath(
        clipper: myClipper(),
        child: Container(
          width: 350,
          height: 120,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Path path = Path()..lineTo(size.width, 0)..lineTo(size.width, size.height)..lineTo(size.width/2, size.height)..close();
    Path path = Path();

    //arcToPoint: two type of radius we can process: 1) elliptical 2) circular(radius)
    double radius = 15;


    ////Example 3: arcTo: it uses Rect,startAngle, sweepAngle, clockwise?




// ////Example 2 for Radigone Project: Coupon shape Created wow;;;;;
//     path
//       ..moveTo(radius, 0)
//       ..lineTo(size.width - radius, 0)
//       ..arcToPoint(Offset(size.width, radius),
//           radius: Radius.circular(radius), clockwise: true)
//       ..lineTo(size.width, 45)
//       ..arcToPoint(Offset(size.width, 75),
//           radius: const  Radius.circular(10), clockwise: false,largeArc: true,rotation: 10)
//       ..lineTo(size.width, size.height - radius)
//       ..arcToPoint(Offset(size.width - radius, size.height),
//           radius: Radius.circular(radius))
//       ..lineTo(radius, size.height)
//       ..arcToPoint(Offset(0, size.height - radius),
//           radius: const Radius.circular(20))
//       ..lineTo(0, 75)
//       ..arcToPoint(const Offset(0, 45),
//           radius: const Radius.circular(10), clockwise: false,largeArc: true,rotation: 10)
//       ..lineTo(0, 20)
//       ..arcToPoint(Offset(radius, 0),
//           radius: Radius.circular(radius), clockwise: true)
//       ..close();

    // path
    //   ..moveTo(radius, 0)
    //   ..lineTo(size.width - radius, 0)
    //   ..arcToPoint(Offset(size.width, radius))
    //   ..lineTo(size.width, size.height - radius)
    //   ..arcToPoint(Offset(size.width - radius, size.height),
    //       radius: const Radius.circular(50))
    //   ..lineTo(radius, size.height)
    //   ..arcToPoint(Offset(0, size.height - radius),
    //       radius: const Radius.circular(20), clockwise: false)
    //   ..lineTo(0, radius)
    //   ..arcToPoint(Offset(radius, 0), radius: const Radius.elliptical(100, 500),clockwise: true)
    //   ..close();

    // //Cubic to: it has two control points
    // var controlPoint1 = Offset(size.width - 200, size.height - 100);
    // var controlPoint2 = Offset(size.width - 100, size.height);
    // var endPoint = Offset(size.width, size.height);
    // path
    //   ..lineTo(0, size.height)..lineTo(10, size.height)
    //   ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
    //       controlPoint2.dy, endPoint.dx, endPoint.dy)
    //   ..lineTo(size.width, 0)
    //   ..close();

    // //quadratic bezier path: it has one control Point;
    // var controlPoint = Offset(size.width/2, size.height/3);
    // var endPoint = Offset(size.width, size.height);
    // path..lineTo(0, size.height)..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)..lineTo(size.width, 0)..close();

    // triangle:
    // path..moveTo(size.width/2, 0)..lineTo(0, size.height)..lineTo(size.width, size.height)..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
