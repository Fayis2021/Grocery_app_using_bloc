part of 'honwbloc_bloc.dart';

@immutable
abstract class HonwblocState {}

abstract class Homeactionstate extends HonwblocState {}

 class HomeblocInitialstate extends HonwblocState {}



//building the ui
class Loadingstate extends HonwblocState {}

class Homeactionsuccessstate extends HonwblocState {
  final List<Product> products;

  Homeactionsuccessstate(this.products);
}

class Errorstate extends HonwblocState {}



//taking action

class Homewishlistnavigationactionstate extends Homeactionstate {}

class Homecartnavigationactionstate extends Homeactionstate {}
