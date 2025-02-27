import 'package:flutter/material.dart';
import 'package:my_wit_wallet/constants.dart';
import 'package:my_wit_wallet/util/extensions/text_input_formatter.dart';

class InputAmount extends StatefulWidget {
  InputAmount({
    Key? key,
    this.prefixIcon,
    this.hint,
    this.keyboardType,
    this.obscureText = false,
    this.textEditingController,
    this.validator,
    this.errorText,
    this.focusNode,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTapOutside,
    this.onTap,
  });
  final IconData? prefixIcon;
  final FocusNode? focusNode;
  final String? errorText;
  final String? Function(String?)? validator;
  final String? hint;
  final TextInputType? keyboardType;
  final TextEditingController? textEditingController;
  final bool obscureText;
  final StringCallback? onChanged;
  final BlankCallback? onEditingComplete;
  final StringCallback? onFieldSubmitted;
  final PointerDownCallback? onTapOutside;
  final BlankCallback? onTap;
  @override
  _InputAmountState createState() => _InputAmountState();
}

typedef StringCallback = void Function(String);
typedef BlankCallback = void Function();
typedef PointerDownCallback = void Function(PointerDownEvent);

class _InputAmountState extends State<InputAmount> {
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.hint ?? 'Input an amount',
          errorText: widget.errorText,
          prefixIcon:
              widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixText: WIT_UNIT[WitUnit.Wit],
        ),
        minLines: 1,
        inputFormatters: [WitValueFormatter()],
        style: theme.textTheme.bodyLarge,
        autocorrect: false,
        focusNode: widget.focusNode,
        controller: widget.textEditingController,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged ?? (String? value) {},
        onEditingComplete: widget.onEditingComplete ?? () {},
        onFieldSubmitted: widget.onFieldSubmitted ?? (String? value) {},
        onTapOutside: widget.onTapOutside ?? (PointerDownEvent? event) {},
        onTap: widget.onTap ?? () {},
        validator: widget.validator,
      ),
    );
  }
}
