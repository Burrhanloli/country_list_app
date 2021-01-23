import 'package:country_list_app/bloc/favourites/favourites_cubit.dart';
import 'package:country_list_app/bloc/favourites/favourites_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesPage extends StatefulWidget {
  FavouritesPage({
    Key key,
  }) : super(key: key);

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<FavouritesCubit>().loadFavourites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        excludeHeaderSemantics: true,
        centerTitle: true,
        title: Text("Favourite Countries",
            style: Theme.of(context).textTheme.headline5),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: ListTileTheme(
              selectedColor: Theme.of(context).primaryColor,
              selectedTileColor:
                  Theme.of(context).primaryColor.withOpacity(0.1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: BlocBuilder<FavouritesCubit, FavouritesState>(
                builder: (context, state) {
                  final child = state.when(
                    idle: () => Container(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    data: (data) {
                      final int itemCount = data.length + 1;
                      return ListView.builder(
                          itemCount: itemCount,
                          controller: _scrollController,
                          itemBuilder: (context, index) {
                            if (index == data.length) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("End of list",
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              );
                            } else {
                              final country = data[index];
                              return Card(
                                child: ListTile(
                                  key: ValueKey<String>(country.code),
                                  title: Text(
                                    country.country,
                                  ),
                                  subtitle: Text(
                                    "code - ${country.code}  region - ${country.region}",
                                  ),
                                ),
                              );
                            }
                          });
                    },
                    error: (error) => Center(
                      child: Text(
                        "Something went wrong",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Theme.of(context).errorColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                  return AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    child: child,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
