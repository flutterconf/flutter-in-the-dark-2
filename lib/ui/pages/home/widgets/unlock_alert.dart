import 'package:desafio_flutter_in_the_dark_2/ui/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnlockAlert extends StatefulWidget {
  @override
  _UnlockAlertState createState() => _UnlockAlertState();
}

class _UnlockAlertState extends State<UnlockAlert> {
  final TextEditingController controller = TextEditingController();

  void _close(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorTheme.surface,
      content: Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          children: [
            IconButton(
              icon: Icon(
                Icons.close,
                color: ColorTheme.red,
              ),
              onPressed: () => _close(context),
            ),
            Text(
              'Warning'.toUpperCase(),
              style: GoogleFonts.kronaOne(
                color: ColorTheme.red,
                fontSize: 25.0,
              ),
            ),
            Text(
              'This action will unlock lethargy code',
              style: GoogleFonts.jura(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Are you?',
              style: GoogleFonts.jura(
                color: ColorTheme.red,
              ),
            ),
            TextField(controller: controller),
            SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(ColorTheme.red),
              ),
              child: Text(
                'Unlock',
                style: GoogleFonts.jura(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
