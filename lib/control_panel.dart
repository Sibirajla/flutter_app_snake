import 'package:flutter/material.dart';
import 'package:flutter_app_snake/control_button.dart';
import 'package:flutter_app_snake/direction.dart';

class ControlPanel extends StatelessWidget {

  final void Function(Direction direction) onTapped;

  const ControlPanel({super.key, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0.0,
        right: 0.0,
        bottom: 50.0,
        child: Row(
      children: [
        Expanded(
            child: Row(
          children: [
            Expanded(child: Container()),
            ControlButton(
                onPressed: (){
                  onTapped(Direction.left);
                },
                icon: const Icon(Icons.arrow_left),
            )
          ],
        )),
        Expanded(
            child: Column(
          children: [
            ControlButton(
              onPressed: (){
                onTapped(Direction.up);
              },
              icon: const Icon(Icons.arrow_drop_up_outlined),
            ),
            const SizedBox(
              height: 70,
            ),
            ControlButton(
              onPressed: (){
                onTapped(Direction.down);
              },
              icon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ],
        )),
        Expanded(
            child: Row(
              children: [
                ControlButton(
                  onPressed: (){
                    onTapped(Direction.right);
                  },
                  icon: const Icon(Icons.arrow_right),
                )
              ],
            ))
      ],
    ));
  }
}
