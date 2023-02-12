import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winey/shared/generic_tile.dart';

class InventoryView extends StatelessWidget {
  const InventoryView({Key? key}) : super(key: key);
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const InventoryView());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 43.0,
            left: 12.0,
            right: 12.0
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47.0),
              child: Text(
                "Inventory",
                style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w900
                ),
              ),
            ),
            const SizedBox(
                height: 15.0
            ),
            const GenericTile(
              hasIcon: false,
              title: "Bottle 1L",
              subtitle: "3,205  units",
            ),
            const GenericTile(
              hasIcon: false,
              title: "Bottle 1L",
              subtitle: "3,205  units",
            ),
            const GenericTile(
              hasIcon: false,
              title: "Bottle 1L",
              subtitle: "3,205  units",
            ),
            const GenericTile(
              hasIcon: false,
              title: "Bottle 1L",
              subtitle: "3,205  units",
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
