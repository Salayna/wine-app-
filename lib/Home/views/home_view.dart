import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winey/Plots/plots.dart';
import 'package:winey/inventory/views/inventory_views.dart';
import 'package:winey/orders/views/orders_views.dart';
import 'package:winey/test/test.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

   static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeView());
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47.0),
              child: Text(
                "Montrachet",
                style: GoogleFonts.inter(
                  fontSize: 32,
                  fontWeight: FontWeight.w900
                ),
              ),
            ),
            const SizedBox(
              height: 15.0
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: 
              BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                 boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children:[
                            Text(
                              "Total Sales",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Colors.red,
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text(
                                  "256K",
                                style: GoogleFonts.inter(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                            child: const Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              size: 35,
                              ),
                            ),
                      ]
                    ),
                  ]
                ),
              )
            ),
            const SizedBox(
                height: 15.0
            ),
            // Create a Row with 2 Boxes each having a Column with a Logo and 2 Texts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonPad(
                    padText: "Inventory",
                    color: Color(0xFFB88F8F),
                    icon: Icons.attach_money,
                  onTap: () {
                   Navigator.push(context, InventoryView.route());
                  },
                ),
                ButtonPad(
                    padText: "Plots",
                    color: Color(0xFFDDBB9D),
                    icon: Icons.navigation_outlined,
                  onTap: () {
                    Navigator.push(context, PlotsView.route());
                  },
                )
              ],
            ),
            const SizedBox(
                height: 15.0
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration:
              BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonPad(
                  padText: "Testing",
                  color: const Color(0xFF8488AE),
                  icon: Icons.colorize_outlined,
                  onTap: () {
                    Navigator.push(context, TestsView.route());
                  },
                ),
                ButtonPad(
                  padText: "Orders",
                  color: const Color(0xFF8BB9AE),
                  icon: Icons.shopping_cart_rounded,
                  onTap: () {
                    Navigator.push(context, OrdersView.route());
                  }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




class ButtonPad extends StatelessWidget {
  final String padText;
  final Color color;
  final IconData icon;
  final VoidCallback? onTap;
  ButtonPad({
    super.key, required this.padText, required this.color, required this.icon, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
          width: 175,
          height: 175,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color:  color,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Text(
                    padText,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Colors.black,
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}