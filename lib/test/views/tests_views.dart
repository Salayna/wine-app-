import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winey/shared/generic_tile.dart';
import 'package:winey/test/views/new_testing.dart';

class TestsView extends StatelessWidget {
  const TestsView({Key? key}) : super(key: key);
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const TestsView());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Testing",
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
              hasIcon: true,
              title: "Testing number 1",
              subtitle: "Quality",
              icon: Icons.colorize_outlined,
              color: Colors.red,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, AddTest.route());
              },
              child: const Text("Add a test"),
            ),
          ],
        ),
      ),
    );
  }
}
