import 'package:country_list_app/bloc/network/network_bloc.dart';
import 'package:country_list_app/bloc/network/network_state.dart';
import 'package:country_list_app/presentation/home_page/widget/country_list.dart';
import 'package:country_list_app/presentation/home_page/widget/home_page_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const HomePageAppbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: BlocBuilder<NetworkBloc, NetworkState>(
              builder: (context, state) {
                final child = state.when(
                  connectionInitial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  connectionSuccess: () => CountryList(),
                  connectionFailure: () => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.warning,
                            size: 50, color: Theme.of(context).errorColor),
                        Center(
                          child: Text(
                            "Please check your network connectivity",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    color: Theme.of(context).errorColor,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
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
    );
  }
}
