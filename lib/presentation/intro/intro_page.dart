import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/intro/intro.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:digiresto/presentation/intro/intro_widget.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late final _controller = new PageController();
  final _intros = <Intro>[
    Intro(
      image: SvgPicture.asset('assets/intro_1.svg'),
      title: 'Temukan Makanan \nFavorit Anda',
      description:
          'Berbagai jenis makanan yang siap dipesan dengan mudah dan cepat.',
    ),
    Intro(
      image: SvgPicture.asset('assets/intro_2.svg'),
      title: 'Masukkan Alamat \nTujuan',
      description:
          'Masukkan alamat Anda untuk mempermudah kurir dalam pengiriman.',
    ),
    Intro(
      image: SvgPicture.asset('assets/intro_3.svg'),
      title: 'Pengiriman Cepat\ndan Aman',
      description:
          'Makanan Anda siap diantar ke alamat tujuan dengan berbagai kurir terpercaya.',
    ),
  ];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          HeaderCurvedWidget(
            height: MediaQuery.of(context).size.height * 0.55,
            color: AppColors.mainColor.withOpacity(0.7),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Image.asset(
                  'assets/logo_digiresto.png',
                  width: 155,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.65,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: AppColors.mainColor2.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
              ),
            ),
          ),
          PageView.builder(
            itemBuilder: (context, index) {
              return IntroWidget(_intros[index]);
            },
            itemCount: _intros.length,
            controller: _controller,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: _currentPage == _intros.length - 1
                  ? CustomButton(
                      onPressed: () => Get.toNamed(Routers.auth),
                      label: 'Mulai Sekarang',
                    )
                  : Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: _intros.length,
                            effect: WormEffect(
                              activeDotColor: AppColors.activeDotColor,
                              dotColor: AppColors.dotColor,
                              dotHeight: 8,
                              dotWidth: 8,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: CustomButton(
                            onPressed: () => _controller.nextPage(
                              duration: Duration(
                                milliseconds: 400,
                              ),
                              curve: Curves.easeOut,
                            ),
                            label: 'Lanjutkan',
                          ),
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
