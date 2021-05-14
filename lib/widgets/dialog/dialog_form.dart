import 'package:flutter/material.dart';

class DialogForm extends StatefulWidget {
  final Function(String) onSubmit;

  DialogForm({Key? key, required this.onSubmit}) : super(key: key);

  @override
  _DialogFormState createState() => _DialogFormState();
}

class _DialogFormState extends State<DialogForm> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canvasColor = theme.canvasColor;
    final primaryColor = theme.primaryColor;
    final textTheme = theme.textTheme;
    final headline1 = textTheme.headline1;
    final bodyText2 = textTheme.bodyText2;
    final unlockButtonTextStyle = bodyText2?.copyWith(color: canvasColor);

    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );

    return Container(
      width: 250,
      child: Column(
        children: [
          Container(
            height: 50,
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              obscuringCharacter: "*",
              cursorColor: Colors.white,
              style: headline1?.copyWith(fontSize: 18),
              decoration: InputDecoration(
                border: border,
                focusedBorder: border,
              ),
              controller: _controller,
            ),
          ),
          SizedBox(height: 17),
          OutlinedButton(
            child: Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Unlock',
                  style: unlockButtonTextStyle,
                ),
              ),
            ),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: primaryColor,
            ),
            onPressed: () => widget.onSubmit(_controller.text),
          ),
        ],
      ),
    );
  }
}
