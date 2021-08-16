import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/locale/app_localization.dart';
import 'package:digiresto/domain/entity/onboarding/onboarding.dart';
import 'package:digiresto/presentation/widgets/app_icon_widget.dart';
import 'package:flutter/material.dart';

class GuideWidget extends StatefulWidget {
  @override
  _GuideWidget createState() => _GuideWidget();
}

class _GuideWidget extends State<GuideWidget> {
  List<SliderModel> mySLides = [];
  int slideIndex = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = new PageController();
  }

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.fiber_manual_record,
              color: isCurrentPage ? AppColors.yellow : Colors.white, size: 18),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    mySLides = getSlides(context);
    return Material(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage(AppAssets.bgSplash),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ))),
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    //padding: EdgeInsets.only(top: 200),
                    child: AppIconWidget(
                  image: AppAssets.appLogo,
                  percent: 0.1,
                )),
                Container(
                  height: MediaQuery.of(context).size.height - 200,
                  padding: EdgeInsets.only(top: 10),
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() {
                        slideIndex = index;
                      });
                    },
                    children: <Widget>[
                      SlideTile(
                        imagePath: mySLides[0].getImageAssetPath(),
                        title: mySLides[0].getTitle(),
                        desc: mySLides[0].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[1].getImageAssetPath(),
                        title: mySLides[1].getTitle(),
                        desc: mySLides[1].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[2].getImageAssetPath(),
                        title: mySLides[2].getTitle(),
                        desc: mySLides[2].getDesc(),
                      )
                    ],
                  ),
                ),
                slideIndex != 2
                    ? Container(
                        //margin: EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  for (int i = 0; i < 3; i++)
                                    i == slideIndex
                                        ? _buildPageIndicator(true)
                                        : _buildPageIndicator(false),
                                ],
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                height: 49,
                                width: 136,
                                child: RaisedButton(
                                    onPressed: () {
                                      controller.animateToPage(slideIndex + 1,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.linear);
                                    },
                                    color: AppColors.yellow,
                                    child: Text(
                                        AppLocalizations.of(context)!
                                            .translate('onboarding_btn_next'),
                                        style: TextStyle(fontSize: 14)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0))),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(
                        width: double.infinity,
                        height: 49,
                        child: RaisedButton(
                            onPressed: () {
                              // TODO: implement bloc

                              setState(() {});
                            },
                            color: AppColors.yellow,
                            child: Text(
                                AppLocalizations.of(context)!
                                    .translate('onboarding_btn_get_start'),
                                style: TextStyle(fontSize: 14)),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0))),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({
    required this.imagePath,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image(
              image: AssetImage(imagePath),
              //fit: BoxFit.cover,
              height: 274,
              width: 294,
              alignment: Alignment.topCenter,
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(title, textAlign: TextAlign.center),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<SliderModel> getSlides(BuildContext context) {
  List<SliderModel> slides = [];
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      AppLocalizations.of(context)!.translate('onboarding_favorite_desc'));
  sliderModel.setTitle(
      AppLocalizations.of(context)!.translate('onboarding_favorite_title'));
  sliderModel.setImageAssetPath(AppAssets.bgOnbooarding1);
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2

  sliderModel.setDesc(
      AppLocalizations.of(context)!.translate('onboarding_address_desc'));
  sliderModel.setTitle(
      AppLocalizations.of(context)!.translate('onboarding_address_title'));
  sliderModel.setImageAssetPath(AppAssets.bgOnbooarding2);
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      AppLocalizations.of(context)!.translate('onboarding_get_started_desc'));
  sliderModel.setTitle(
      AppLocalizations.of(context)!.translate('onboarding_get_started_title'));
  sliderModel.setImageAssetPath(AppAssets.bgOnbooarding3);
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
