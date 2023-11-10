import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/widgets/button_widget.dart';

class BackgroundWidget extends StatelessWidget {
  final bool showLogo;
  const BackgroundWidget({super.key, required this.showLogo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff3B7C99),
                  Color(0xff4395B2),
                  Color(0xff835E8A),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.colorBurn,
            child: const Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/background.png'),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              showLogo
                  ? Padding(
                      padding: const EdgeInsets.only(top: 36.0),
                      child: Image.asset(
                        'assets/logo.png',
                        width: 250,
                      ),
                    )
                  : const SizedBox.shrink(),
              showLogo
                  ? Column(
                      children: [
                        ButtonWidget(
                          text: "Proceedix Enterpirse",
                          isPrimary: true,
                          icon: Icons.cloud,
                          onPressed: () {
                            context.router.pushNamed('/form-screen');
                          },
                        ),
                        ButtonWidget(
                          text: "Login",
                          icon: Icons.person_2,
                          isPrimary: false,
                          onPressed: () {
                            context.router.pushNamed('/form-screen');
                          },
                        ),
                      ],
                    )
                  : const SizedBox.shrink()
            ],
          ),
        )
      ],
    );
  }
}
