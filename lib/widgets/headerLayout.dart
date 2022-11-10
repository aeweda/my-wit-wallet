import 'package:flutter/material.dart';
import 'package:witnet_wallet/theme/extended_theme.dart';
import 'package:witnet_wallet/theme/wallet_theme.dart';

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class HeaderLayout extends StatelessWidget {
  final AppBar? appBar;
  final List<Widget> navigationActions;
  final Widget? dashboardActions;

  const HeaderLayout({
    required this.navigationActions,
    this.dashboardActions,
    this.appBar,
  });

  Widget build(BuildContext context) {
    final extendedTheme = Theme.of(context).extension<ExtendedTheme>()!;
    final theme = Theme.of(context);
    return ClipPath(
        clipper: Customshape(),
        child: Container(
          // ignore: todo
          // TODO[#10]: Implement header layout responsive depending on screen height
          height: dashboardActions != null ? 300 : 200,
          width: MediaQuery.of(context).size.width,
          color: extendedTheme.headerBackgroundColor,
          child: Column(children: [
            Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: navigationActions.length > 1
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.start,
                  children: navigationActions,
                )),
            Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                  child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: 50,
                    maxWidth: dashboardActions != null
                        ? MediaQuery.of(context).size.width * 0.6
                        : MediaQuery.of(context).size.width * 0.3),
                child: Column(
                  children: [
                    dashboardActions != null
                        ? dashboardActions!
                        : witnetEyeIcon(theme)
                  ],
                ),
              )),
            ])),
          ]),
        ));
  }
}
