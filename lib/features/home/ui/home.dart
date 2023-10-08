import 'package:blocgrocery/features/cart/ui/cart_main_page.dart';
import 'package:blocgrocery/features/wishlist/ui/wishlistpage.dart';
import 'package:flutter/material.dart';

import '../bloc/honwbloc_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HonwblocBloc bloc = HonwblocBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HonwblocBloc, HonwblocState>(
      bloc: bloc,
      listenWhen: (previous, current) => current is Homeactionstate,
      buildWhen: (previous, current) => current is  !Homeactionstate,
      listener: (context, state) {
        if (state is Homewishlistnavigationactionstate) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Wishlist(),
              ));
        } else if (state is Homecartnavigationactionstate) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Cart(),
              ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Fayis HERE"),
            actions: [
              IconButton(
                  onPressed: () {
                    bloc.add(Homewishlistnavigationevent());
                  },
                  icon: const Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {
                    bloc.add(Homecartnavigationevent());
                  },
                  icon: const Icon(Icons.shopping_bag))
            ],
          ),
        );
      },
    );
  }
}
