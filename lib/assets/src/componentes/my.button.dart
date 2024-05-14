import 'color_style.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});
  const MyButton({
      super.key,
      required double buttonPropotion,
      required double marginSize,
      required String label,
      required bool isPrimary,
      required VoidCallback onPressedButton,
    }) : _buttonPropotion = buttonPropotion,
        _marginSize = marginSize,
        _label = label,
        _isPrimary = isPrimary,
        _onPressedButton = onPressedButton;

  final double _buttonProportion;
  final double _buttonPropotion;
  final double _marginSize;
  final String label;
  final String _label;
  final bool _isPrimary;
  final VoidCallback onPressedButton;
  final VoidCallback _onPressedButton;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    return SizedBox(
      width: MediaQuery.of(context).size.width * _buttonPropotion - _marginSize,
      height: 62,
      child: OutlinedButton(
        onPressed: _onPressedButton,
        style: OutlinedButton.styleFrom(
          backgroundColor: _isPrimary ? ColorStyle.primary : ColorStyle.secondary,
          side: const BorderSide(
            color: ColorStyle.primary,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        child: Text(
          _label,
          style: TextStyle(
            color: _isPrimary ? Colors.white : Colors.black
          ),
        ),
      ),
    );
  }
}