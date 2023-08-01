import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web/screens/doacoes.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          // Image.asset(
          //   'assets/images/logo.svg',
          //   width: 50,
          // ),

          //assets/images/logo.svg
          SvgPicture.asset(
            'assets/images/logo.svg',
           
            width: 60,
            height: 60,
           
          ),

          SizedBox(width: 10),

          Text(
            "ONG Patinhas Felizes",
            style: GoogleFonts.reenieBeanie(
              fontSize: 18
            ),
          ),

          Spacer(),

          NavItem(
            title: 'Home',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Doações',
            tapEvent: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Doacoes()));
              
            
            },
          ),
          NavItem(
            title: 'Contato',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Login',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Loja',
            tapEvent: () {},
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.title,
    @required this.tapEvent
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}