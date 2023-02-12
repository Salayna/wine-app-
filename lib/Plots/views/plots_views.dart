import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winey/shared/generic_tile.dart';

class PlotsView extends StatelessWidget {
  const PlotsView({Key? key}) : super(key: key);
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const PlotsView());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Plots",
          style: GoogleFonts.inter(
              fontSize: 32,
              fontWeight: FontWeight.w900
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 43.0,
            left: 12.0,
            right: 12.0
        ),
        child: Column(
          children: [
            const GenericTile(
              hasIcon: false,
              title: "Plots 1",
              subtitle: "2 500 bottles 1L",
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
