import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:desafio_flutter_in_the_dark_2/src/core/animations/animations.dart';
import 'package:desafio_flutter_in_the_dark_2/src/core/layout/custom_layout_builder.dart';

///HomePage
class HomePage extends StatelessWidget {
  ///HomePage constructor
  const HomePage({Key? key}) : super(key: key);

  ///HomePage [routeName]
  static const routeName = 'HomePage';

  ///Router for HomePage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return CustomLayoutBuilder(
      mobile: _MobileView(),
      tablet: _TabletView(),
      desktop: _TabletView(),
    );
  }
}

class _MobileView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            SlideAnimation(
              initialOffset: Offset(0, 100),
              child: Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Hero(
        tag: 'sumbutton',
        child: ElevatedButton(
          onPressed: () => counter.value++,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class _TabletView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Hero(
              tag: 'sumbutton',
              child: ElevatedButton(
                onPressed: () => counter.value++,
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
