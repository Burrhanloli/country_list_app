import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:country_list_app/presentation/util/router.gr.dart';

class HomePageAppbar extends StatelessWidget with PreferredSizeWidget {
  const HomePageAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      excludeHeaderSemantics: true,
      bottom: const HomePageAppbarBottom(),
      centerTitle: true,
      title: Text("Countries", style: Theme.of(context).textTheme.headline5),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class HomePageAppbarBottom extends StatelessWidget with PreferredSizeWidget {
  const HomePageAppbarBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: () => ExtendedNavigator.of(context).pushFavouritesPage(),
            child: const Text("View Favorites"),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(30);
}
