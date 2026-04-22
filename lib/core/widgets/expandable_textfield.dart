import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';

class ExpandableTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextStyle? hintStyle;
  final IconData? suffixIcon;
  final double? iconSize;
  final Color? iconColor;
  const ExpandableTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.hintStyle,
    this.iconSize,
    this.iconColor,
  });

  @override
  State<ExpandableTextField> createState() => _ExpandableTextFieldState();
}

class _ExpandableTextFieldState extends State<ExpandableTextField> {
  bool _isExpanded = false;
  late final Widget _textField;
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_updateSize);
    _textField = TextField(
      controller: widget.controller,
      focusNode: _focusNode,
      style: widget.hintStyle?.copyWith(color: AppColors.primaryText),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        border: InputBorder.none,
      ),
    );
  }

  double _getHintWidth({required String text, TextStyle? style}) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.width + AppSpacing.md;
  }

  void _updateSize() {
    setState(() {
      if (_focusNode.hasFocus) {
        _isExpanded = true;
      } else {
        _isExpanded = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: _isExpanded
          ? MediaQuery.of(context).size.width - AppSpacing.lg * 2
          : _getHintWidth(text: widget.hintText, style: widget.hintStyle) +
                (widget.iconSize != null ? widget.iconSize! : 0) +
                AppSpacing.md,
      child: Row(
        children: [
          Expanded(child: _textField),
          SizedBox(width: AppSpacing.md),
          if (widget.suffixIcon != null)
            Icon(
              widget.suffixIcon!,
              size: widget.iconSize,
              color: widget.iconColor,
            ),
        ],
      ),
    );
  }
}
