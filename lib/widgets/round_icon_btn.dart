import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  const RoundIconButton({Key key, this.icon, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      // shape: CircleBorder(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPress,
    );
  }
}
