import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/constants/constants.dart';
import 'package:flutter_ui_challenge/widgets/appbar.dart';
import 'package:flutter_ui_challenge/widgets/search.dart';
import 'package:flutter_ui_challenge/widgets/tabbar.dart';
import 'package:flutter_ui_challenge/widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String selected;
  @override
  void initState() {
    selected = tabs[0];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: size_md_6 * 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: size_lg_14, horizontal: size_md_6 * 3),
              child: ClockBar(
                leading: const LeadingIconBuilder(),
                trailing: KIcon(
                  Image.asset(
                    '$assetsPath/bell.png',
                    height: size_md_6 * 4,
                  ),
                  label: "24",
                ),
              ),
            ),
            SearchBuilder(
              hint: 'Search product',
              leadingIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    '$assetsPath/search.jpg',
                    height: size_sm_4 * 8,
                  )),
              trailingIcon: Container(
                width: size_md_6 * 1.2,
                height: size_md_6 * 1.2,
                margin: const EdgeInsets.all(size_md_6),
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: BorderRadius.circular(size_sm_4 * 3),
                ),
                alignment: Alignment.center,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                      color: Colors.white,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: size_lg_14 * 2),
              child: HorizontalTabBuilder(
                tabs: tabs,
                selected: selected,
                onChange: (x) {
                  setState(() {
                    selected = x;
                  });
                },
              ),
            ),
            NewArrivals(
              onTap: () {
                print('new arrivals');
              },
            )
          ],
        ),
      )),
    );
  }
}

class NewArrivals extends StatefulWidget {
  final Function? onTap;
  const NewArrivals({Key? key, this.onTap}) : super(key: key);

  @override
  _NewArrivalsState createState() => _NewArrivalsState();
}

class _NewArrivalsState extends State<NewArrivals> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => widget.onTap!.call(),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: size_md_6 * 3,
              ),
              child: Container(
                height: 160,
                margin: const EdgeInsets.symmetric(horizontal: size_ex_lg_24),
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: BorderRadius.circular(size_sm_4 * 8),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: size_ex_lg_24 * 2,
              child: Text('New\nArrivals',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ),
            Positioned(
                top: 0,
                right: size_md_6 * 4,
                child: Image.asset(
                  '$assetsPath/clock_dark.png',
                  height: 140,
                ))
          ],
        ));
  }
}
