import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:create_x_website/globals.dart';
import 'package:create_x_website/size_config.dart';

/// Created by Musa Usman on 07.10.2020
/// Copyright © 2020 Musa Usman. All rights reserved.
///
/// Website: musausman.com
/// Email: hello@musausman.com
/// WhatsApp: +92 324 9066001

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CreateX - Build your website!',
        home: MainPage(),
        theme: ThemeData(
          primaryColor: Colors.blueGrey[900],
        ),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(),
      );

  _appBar() => PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1.325),
        child: Container(
          color: Colors.white,
          height: kToolbarHeight * 1.325,
          padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.width(.16),
          ),
          child: Row(
            children: [
              ///Logo
              Image.network(
                'https://demo.createx.studio/createx/img/logo/logo-dark.png',
                height: kToolbarHeight * 0.45,
                fit: BoxFit.fitHeight,
              ),

              ///Gap
              Spacer(),

              ///Menu Items
              _navBarItem(0, "HOME"),
              _navBarItem(1, "PORTFOLIO"),
              _navBarItem(2, "BLOG"),
              _navBarItem(3, "SHOP"),
              _navBarItem(4, "ACCOUNT"),
              _navBarItem(5, "PAGES"),
              _navBarItem(6, "COMPONENTS"),

              ///Gap
              Spacer(),

              ///Search
              _searchButton(),

              ///Gap
              SizedBox(
                width: sizeConfig.width(.0115),
              ),

              ///Buy Now
              _buyNowButton(),
            ],
          ),
        ),
      );

  _body() => ListView(
        children: [
          _section1(),
        ],
      );

  _section1() => Stack(
        children: [
          ///Background Image
          Container(
            child: Image.network(
              "https://demo.createx.studio/createx/img/homepages/web-app-showcase/hero-bg.jpg",
              height: sizeConfig.height(0.9),
              fit: BoxFit.fitHeight,
              alignment: Alignment.topCenter,
            ),
          ),

          ///Body Content
          Container(
            padding: EdgeInsets.only(
              left: sizeConfig.width(.11),
              right: sizeConfig.width(.025),
            ),
            child: Row(
              children: [
                ///Left Side Description Content
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    height: sizeConfig.height(0.9),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: sizeConfig.width(.05),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///Gap
                        SizedBox(
                          height: sizeConfig.height(.2),
                        ),

                        ///Heading Text
                        RichText(
                          text: TextSpan(
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      color: Colors.white,
                                      fontSize: 47,
                                      fontWeight: FontWeight.w200,
                                      letterSpacing: 1,
                                    ),
                            children: [
                              TextSpan(
                                text: "Build an impressive\nwebsite",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 47,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                    ),
                              ),
                              TextSpan(
                                  text: " for business and\npersonal use."),
                            ],
                          ),
                        ),

                        ///Description
                        Padding(
                          padding: EdgeInsets.only(
                            top: sizeConfig.height(.03),
                          ),
                          child: Text(
                            "Morbi fringilla ex luctus, tempor ante id, finibus ante. Nulla facilisi. Phasellus et quam porta, elementum sem eget, pellentesque dolor magni dolores eos qui ratione.",
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(.7),
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ),

                        ///Gap
                        SizedBox(
                          height: sizeConfig.height(.04),
                        ),

                        ///CTA Buttons
                        Row(
                          children: [
                            ///Learn More Button
                            RaisedButton(
                              elevation: 0,
                              onPressed: () {},
                              color: Colors.white,
                              child: Text("LEARN MORE"),
                              padding: EdgeInsets.symmetric(
                                horizontal: sizeConfig.width(.02),
                                vertical: sizeConfig.height(.015),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),

                            ///Gap
                            SizedBox(
                              width: sizeConfig.width(.01),
                            ),

                            ///Get Started Button
                            RaisedButton(
                              elevation: 0,
                              onPressed: () {},
                              color: const Color(0xFFFC8D3A),
                              child: Text(
                                "GET STARTED FOR FREE",
                                style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: sizeConfig.width(.02),
                                vertical: sizeConfig.height(.015),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                ///Right Side Image Content
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    height: sizeConfig.height(0.9),
                    child: Image.network(
                      "https://demo.createx.studio/createx/img/homepages/web-app-showcase/hero-img.png",
                      height: sizeConfig.height(.6),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  _navBarItem(int index, String text) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: sizeConfig.width(.01),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 1.5,
              width: sizeConfig.width(.025),
              color: index == _selectedIndex
                  ? Theme.of(context).primaryColor
                  : null,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: index == _selectedIndex
                        ? Theme.of(context).primaryColor
                        : null,
                    fontSize: 13.5,
                  ),
            ),
            Container(),
          ],
        ),
      );

  _searchButton() => Material(
        color: Colors.white,
        elevation: 25,
        shadowColor: Colors.blueGrey[300],
        child: InkWell(
          onTap: () {},
          child: Container(
            height: kToolbarHeight * .85,
            width: kToolbarHeight * .85,
            padding: EdgeInsets.all(
              sizeConfig.height(.015),
            ),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.black,
              size: 18,
            ),
          ),
        ),
      );

  _buyNowButton() => InkWell(
        onTap: () {},
        child: Container(
          height: kToolbarHeight * .85,
          padding: EdgeInsets.symmetric(
            vertical: sizeConfig.height(.015),
            horizontal: sizeConfig.width(.015),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [
                0.2,
                1,
              ],
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor.withOpacity(.8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.blueGrey[100].withOpacity(.5),
                blurRadius: 9,
              ),
            ],
          ),
          child: Center(
            child: Text(
              "BUY NOW",
              style: Theme.of(context).textTheme.button.copyWith(
                    color: Colors.white,
                    fontSize: 12.5,
                  ),
            ),
          ),
        ),
      );
}
