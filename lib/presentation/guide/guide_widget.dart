import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class GuideKeys {
  GuideKeys._();
  static GlobalKey location = GlobalKey();
  static GlobalKey search = GlobalKey();
  static GlobalKey banner = GlobalKey();
  static GlobalKey terdekat = GlobalKey();
  static GlobalKey digidiscount = GlobalKey();
  static GlobalKey frozenfood = GlobalKey();
  static GlobalKey indonesiapastibisa = GlobalKey();

  static List<TargetFocus> targetFocus = [
    TargetFocus(
      identify: "Lokasi",
      keyTarget: location,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return GuideContentBuild(
              arrowPosition: ArrowPosition.topLeft,
              controller: controller,
              isFirst: true,
              title: 'Alamat',
              description: """Masukan alamat Anda untuk mempermudah
pengiriman dan mengetahui resto terdekat
disekitar Anda.""",
            );
          },
        )
      ],
    ),
    TargetFocus(
      identify: "Temukan",
      keyTarget: search,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return GuideContentBuild(
              arrowPosition: ArrowPosition.topLeft,
              controller: controller,
              title: 'Temukan makanan favorit',
              description: 'Temukan makanan favorit yang Anda inginkan.',
            );
          },
        )
      ],
    ),
    TargetFocus(
      identify: "Banner",
      keyTarget: banner,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return GuideContentBuild(
              arrowPosition: ArrowPosition.topLeft,
              controller: controller,
              title: 'Home Banner',
              description: 'Temukan info menarik dan terbaru.',
            );
          },
        )
      ],
    ),
    TargetFocus(
      identify: "Terdeket",
      keyTarget: terdekat,
      shape: ShapeLightFocus.RRect,
      radius: 8,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return GuideContentBuild(
              arrowPosition: ArrowPosition.topLeft,
              controller: controller,
              title: 'Terdekat',
              description: 'Temukan resto terdekat dari lokasi Anda.',
            );
          },
        )
      ],
    ),
    TargetFocus(
      identify: "Digidiskon",
      keyTarget: digidiscount,
      shape: ShapeLightFocus.RRect,
      radius: 8,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return GuideContentBuild(
              arrowPosition: ArrowPosition.topRight,
              controller: controller,
              title: 'DigiDiskon',
              description: 'Temukan berbagai diskon spesial di sekitar Anda.',
            );
          },
        )
      ],
    ),
    TargetFocus(
      identify: "Frozenfood",
      keyTarget: frozenfood,
      shape: ShapeLightFocus.RRect,
      radius: 8,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return GuideContentBuild(
              arrowPosition: ArrowPosition.bottomLeft,
              controller: controller,
              title: 'Frozen Food',
              description: """Temukan berbagai jenis makanan beku yang mudah
dan cepat untuk di sajikan.""",
            );
          },
        )
      ],
    ),
    TargetFocus(
      identify: "Indonesia",
      keyTarget: indonesiapastibisa,
      shape: ShapeLightFocus.RRect,
      radius: 8,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return GuideContentBuild(
              arrowPosition: ArrowPosition.bottomRight,
              isLast: true,
              controller: controller,
              title: 'Indonesia Pasti Bisa',
              description: 'Paket makanan untuk kamu yang sedang Isoman.',
            );
          },
        )
      ],
    ),
  ];
}

class TriangleClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipperTop oldClipper) => false;
}

class TriangleClipperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipperBottom oldClipper) => false;
}

class GuideContentBuild extends StatelessWidget {
  final TutorialCoachMarkController controller;
  final String title;
  final String description;
  final bool isFirst;
  final bool isLast;
  final bool leftArrow;
  final ArrowPosition arrowPosition;

  const GuideContentBuild({
    Key? key,
    required this.controller,
    required this.title,
    required this.description,
    this.isFirst = false,
    this.isLast = false,
    this.leftArrow = false,
    required this.arrowPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (arrowPosition == ArrowPosition.topLeft ||
            arrowPosition == ArrowPosition.topRight)
          Container(
            alignment: arrowPosition == ArrowPosition.topLeft
                ? Alignment.centerLeft
                : Alignment.centerRight,
            margin: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: ClipPath(
              clipper: TriangleClipperTop(),
              child: Container(
                color: Colors.white,
                height: 16,
                width: 27,
              ),
            ),
          ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.fromBorderSide(BorderSide.none),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.guideTitleStyle,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                description,
                style: Styles.guideDescStyle,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isLast
                      ? SizedBox()
                      : GestureDetector(
                          onTap: () => controller.skip(),
                          child: Text(
                            'Skip',
                            style: Styles.guideSkipStyle,
                          ),
                        ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!isFirst)
                        ElevatedButton(
                          onPressed: () => controller.previous(),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                            size: 15,
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(30, 30),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(10),
                            primary: AppColors.mainColor, // <-- Button color
                            onPrimary: AppColors.mainColor
                                .withOpacity(0.5), // <-- Splash color
                          ),
                        ),
                      ElevatedButton(
                        onPressed: () => controller.next(),
                        child: Icon(
                          isLast
                              ? Icons.check
                              : Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 15,
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(30, 30),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          primary: AppColors.mainColor, // <-- Button color
                          onPrimary: AppColors.mainColor
                              .withOpacity(0.5), // <-- Splash color
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        if (arrowPosition == ArrowPosition.bottomLeft ||
            arrowPosition == ArrowPosition.bottomRight)
          Container(
            alignment: arrowPosition == ArrowPosition.bottomLeft
                ? Alignment.centerLeft
                : Alignment.centerRight,
            margin: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: ClipPath(
              clipper: TriangleClipperBottom(),
              child: Container(
                color: Colors.white,
                height: 16,
                width: 27,
              ),
            ),
          ),
      ],
    );
  }
}

enum ArrowPosition {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}
