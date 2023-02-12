import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericTile extends StatelessWidget {
  final bool hasIcon;
  final String title;
  final String subtitle;
  final IconData? icon;
  final Color? color;
  const GenericTile({Key? key, required this.hasIcon, required this.title, required this.subtitle, this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 90,
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                            title,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          child: Text(
                            subtitle,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.inter(
                              fontSize: 23,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ]
                  ),
                ),
                SideIcon( hasIcon: hasIcon, icon: icon, color: color,),
              ]
          ),
          ]
          ),
        ),
      ),
    );
  }
}

class SideIcon extends StatelessWidget {
  final bool hasIcon;
  final IconData? icon;
  final Color? color;
  const SideIcon({
    super.key, required this.hasIcon, this.icon, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      //ternary operator to check if hasIcon is true
      child: hasIcon ?  Icon(
        icon ?? Icons.attach_money,
        color: color ?? Colors.grey,
        size: 35,
      ) : const SizedBox(),

    );
  }
}


//Create a Custom Text Field Taking only Floating Point Numbers as Input
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  const CustomTextField({Key? key, required this.controller, this.hintText, this.labelText, this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        errorText: errorText,

      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
      ],
    );
  }
}

