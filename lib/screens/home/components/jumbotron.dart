import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web/components/main_button.dart';

import '../../../constants.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Abrigo para animais  ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800
                          )
                        ),
                        TextSpan(
                          text: 'Abandonados',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor
                          )
                        ),
                      ]
                    )
                  ),

                  Text(
                    'Proteção e saúde de animais',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                    ),
                  ),

                  Text(
                    'Feiras de Adoção ',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Ajude-nos a tornar este mundo um lugar melhor para os animais.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: <Widget>[
                      MainButton(
                        title: 'INICIAR',
                        color: kPrimaryColor,
                        tapEvent: () {},
                      ),

                      SizedBox(width: 10),

                      MainButton(
                        title: 'CADASTRAR',
                        color: kSecondaryColor,
                        tapEvent: () {},
                      )
                    ],
                  )
                ],
              ),
            )
          ),

          SvgPicture.asset('assets/images/Good_doggy.svg',
            width: size.width * 0.5,
            height: size.height * 0.7,
          
          )
        ],
      )
    );
  }
}
