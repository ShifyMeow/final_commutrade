import 'package:flutter/material.dart';

class ClearableTextField extends StatefulWidget {
  // We accept all the common properties of a regular TextField
  final String labelText;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;

  const ClearableTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.prefixIcon,
  });

  @override
  State<ClearableTextField> createState() => _ClearableTextFieldState();
}

class _ClearableTextFieldState extends State<ClearableTextField> {
  // A controller is needed to manage the text and clear it
  final TextEditingController _controller = TextEditingController();
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();
    // We listen to the controller to know when to show/hide the button
    _controller.addListener(() {
      setState(() {
        _showClearButton = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    // It's important to dispose of the controller to prevent memory leaks
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        // The suffixIcon is the clear button, which is shown conditionally
        suffixIcon: _showClearButton
            ? IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // This is the action that clears the text
            _controller.clear();
          },
        )
            : null, // If false, no icon is shown
      ),
    );
  }
}