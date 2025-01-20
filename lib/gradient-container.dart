import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class Gradient_Container extends StatelessWidget {
  const Gradient_Container(this.color1, this.color2, {super.key});

  const Gradient_Container.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAligment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class Gradient_Container extends StatelessWidget {
//   const Gradient_Container({super.key, required this.colors});
//   final List<Color> colors;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAligment,
//         ),
//       ),
//       child: Center(
//         child: StyledText('Hello World'),
//       ),
//     );
//   }
// }
