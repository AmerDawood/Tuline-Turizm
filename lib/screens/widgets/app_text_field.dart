import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    String? initialValue,
    String ? errorText,
    TextEditingController? textController,
    String? text,
    required String hint,
    TextInputType textInputType = TextInputType.text,
    bool obscureText = false,
    bool enabled = true,
    TextInputAction textInputAction = TextInputAction.next,
    Function(String value)? onSubmitted,
    String? Function(String? value)? validator,
    void Function(String? value)? onSaved,
    void Function(String? value)? onChanged,
  })
      : _textController = textController,
        _initialValue = initialValue,
        _text = text,
        _hint = hint,
        _textInputType = textInputType,
        _obscureText = obscureText,
        _enabled = enabled,
        _textInputAction = textInputAction,
        _onSubmitted = onSubmitted,
        _validator = validator,
        _onSaved = onSaved,
        _onChanged = onChanged,
        _errorText = errorText,
        super(key: key);

  final String? _initialValue;
  final TextEditingController? _textController;
  final String? _text;
  final String _hint;
  final TextInputType _textInputType;
  final bool _obscureText;
  final bool _enabled;
  final TextInputAction _textInputAction;
  final void Function(String value)? _onSubmitted;
  final String? Function(String? value)? _validator;
  final void Function(String? value)? _onSaved;
  final void Function(String? value)? _onChanged;
  final String? _errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: TextFormField(
          autofocus: true,
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 2.0,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _hint,
            errorText: _errorText,
          ),
          cursorColor: Colors.black,
          keyboardType: _textInputType,
          obscureText: _obscureText,
          enabled: _enabled,
          textInputAction: _textInputAction,
          controller: _textController,
          initialValue: _initialValue,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            //     !isEmail(value)) {
            //   return 'Please enter a valid email address';
            // }
            return _validator?.call(value);
          },
          onSaved: _onSaved,
          onChanged: _onChanged,
          onFieldSubmitted: _onSubmitted,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
    );
  }

}
