import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class CollapsedScafold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showBackButton;
  const CollapsedScafold({
    Key? key,
    this.title = 'Title',
    this.body = const SizedBox(),
    this.showBackButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.pin,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      flex: 6,
                      child: Container(),
                    ),
                    Flexible(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: showBackButton
                                ? GestureDetector(
                                    onTap: () => Get.back(),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      height: 15,
                                      child: SvgPicture.asset(
                                        'assets/arrow_back_icon.svg',
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              title,
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
                background: SvgPicture.asset(
                  'assets/header.svg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ];
        },
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: body,
        ),
      ),
    );
  }
}
